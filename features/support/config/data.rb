require "yaml"

ENVIRONMENT = ENV['ENVIRONMENT']

dir = "#{Dir.pwd}/features/payload/#{ENVIRONMENT}/"
data = {}
Dir.foreach(dir) do |filename|
  next if filename == '.' or filename == '..'
  area = File.basename(filename, ".yaml").to_s
  data["#{area}"] = YAML.load_file("#{dir}/#{filename}")
end

CONFIG = data
