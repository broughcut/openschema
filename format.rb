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

  def size(i)
    i.split('to').last.to_i if i.include?("to")
  end


  def kind(i)
    if i =~ /boo|integer/
      "integer"
    elsif i =~ /money|percent/
      "float"
    elsif i =~ /date/
      "datetime"
    elsif i =~ /duration/
      "interval"
    else
      "string"
    end
  end


