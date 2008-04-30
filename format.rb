require 'erb'


  def create_models(package,format)
    dir = format.to_s.downcase
    package.last.each do |it|
      @element = it
      model = File.new("output_files/models/#{dir}/ota_#{it[:node].underscore}.rb","w+")
      f = File.read("templates/#{dir}/model.rb")
      model.puts ERB.new(eval(f)).result.gsub(/^  $/){}.gsub(/^\n/){}
      model.close
    end
  end


  def create_migrations(package,format)
    dir = format.to_s.downcase
    @schema = package.first
    migration = File.new("output_files/database/#{dir}/01_create_ota_#{@schema.underscore}.rb","w+")
    @elements = package.last
    f = File.read("templates/#{dir}/migration.rb")
    migration.puts ERB.new(eval(f)).result.gsub(/^\s{0,6}$/){}.gsub(/^\n/){}
    migration.close
  end


  def size(k,v)
    if v.include?('to')
      i = v.split('to').last.gsub(/\D/){}.to_i
    else
      i = v.gsub(/\D/){}.to_i
    end
    if k == "decimal"
      i == 0 ? range = 10 : range = range
      ":precision => #{range}, :scale => 2"
    elsif i > 0
      ":limit => #{i}"
    end
  end


  def kind(k)
    it = k.downcase
    if it =~ /integer|numeric/
      "integer"
    elsif it =~ /boo/
      "boolean"
    elsif it =~ /money/
      "decimal"
    elsif it =~ /date/
      "datetime"
    elsif it =~ /duration/
      "interval"
    else
      "string"
    end
  end


