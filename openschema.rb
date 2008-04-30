require 'rubygems'
require 'hpricot'
require 'active_support'
require 'erb'
require 'format'

class OpenSchema

  attr_accessor :schema, :html, :xml, :root, :result

  def initialize(schema)
    @schema = schema.gsub(/OTA|_/){}
    get_files
    parse
  end


  def fetch(path,file)
    system("wget #{path} -O ota_files/#{file}")
  end


  def get_files
    unless File.exist?("ota_files/#{@schema}.html")
      uri = "http://www.opentravel.org/Resources/xdocs/2006A/xsd/http___www_opentravel_org_OTA_2003_05/element/OTA_#{@schema}.htm"
      fetch(uri,"#{@schema}.html")
    end
    unless File.exist?("ota_files/#{@schema}.xml")
      uri = "http://www.opentravel.org/2007B/FS_OTA_#{schema}.xsd"
      fetch(uri,"#{@schema}.xml")
    end
    file = File.read("ota_files/#{@schema}.html")
    @html = Hpricot(file)
    file = File.read("ota_files/#{@schema}.xml").gsub(/xs:/){}
    @xml = Hpricot.XML(file)
  end


  def has_nodes(node)
    lines = []
    node[:children].each do |it|
      el = @xml.at("element[@name='#{node[:node]}]")
      if el
        desc = el.search(:documentation).first
        if desc && desc.inner_text.downcase =~ /collection|set/
          lines << "has_many :ota_#{it.pluralize.underscore}, :foreign_key => :parent_id"
        else
          lines << "has_one :ota_#{it.underscore}, :foreign_key => :parent_id"
        end
      end
    end
    lines
  end


  def parse
    @root = @html.at('.hname').inner_text.gsub(/OTA|_/){}.gsub(/RQ/,'Rq').gsub(/RS/,'Rs')
    nests = [];elements = [];nodes = []
    (@html/".cdl a").each {|it| nests << it.inner_html.split('/')}
    paths = (@html/".xselect option").map {|it| it.inner_html}.map {|it| it.split("/")}
    paths.each_with_index do |it,index|
      node = it.last.gsub(/OTA|_/){}
      parent = (it.size > 1 ? it[-2] : (parent == node ? @root : nil))
      children = []
      paths[index+1..-1].each do |path| 
        child = path[it.size]
        if child
          children << child
        else
          break
        end
      end
      nodes << {:node => it.last.gsub(/OTA|_/){}, :parent => parent, :children => children.uniq.compact}
    end
    nodes.each_with_index do |n,i|
      attrs = (@html/"#div#{i} tr nobr").reject {|it| !it.respond_to?(:inner_text)}
      attrs.map! {|it| it.inner_text.gsub(/^ID$/,'the_ID')}
      set = (attrs.any? ? Hash[*attrs] : {})
      elements << {:attributes => set, :node => n[:node], :children => n[:children], :belongs_to => [*n[:parent]], :has_nodes => has_nodes(n)}
    end
    models = []
    elements.group_by {|it| it[:node]}.each_pair do |k,v|
      n = v.first
      v[1..-1].each do |el|
        el[:children] = el[:children]|n[:children]
        el[:belongs_to] = el[:belongs_to]|n[:belongs_to]
        n.merge!(el)
      end
      models << n
    end
    @result = [@root,models]
  end
end
