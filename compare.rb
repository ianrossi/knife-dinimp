# Write out the cookbook name, version in use and latest version
# for a given directoryrequire 'rubygems'
require 'rubygems'
require 'json'
require 'librarian/manifest'
require 'chef/json_compat'
require 'chef/cookbook/metadata'
require 'rest-client'
require 'colorize'

supermarket_uri = 'https://supermarket.getchef.com/api/v1'

MANIFESTS = %w(metadata.json metadata.yml metadata.yaml metadata.rb)

cookbook_paths = Dir.glob([ARGV[0], '/*/'].join)

cookbook_paths.sort.each do |cookbook_path|

  cookbook_name = File.basename(cookbook_path)

  manifest_path = MANIFESTS.map{|manifest| File.join(cookbook_path, manifest)}.find{|s| File.exists?(s)}

  case File.extname(File.basename(manifest_path))
  when ".rb"
    metadata = ::Chef::Cookbook::Metadata.new
    metadata.from_file(manifest_path)
    puts
    version = metadata.version
  when ".json"
    version = JSON.parse(File.read(manifest_path))['version']
  end

  response = RestClient.get([supermarket_uri, '/cookbooks/', cookbook_name, '/versions/latest'].join){ | response, request, result | response }
  case response.code
  when 200
    response
    latest_version = JSON.parse(response)['version']
    report = "#{cookbook_name}, using: #{version}, latest: #{latest_version}"
    puts (version == latest_version) ? "(current) #{report.green}" : "(old) #{report.red}"
  when 404
    response 
    report = "(unknown) #{cookbook_name}, using: #{version}, latest: Not found, 404 from supermarket"
    puts report.yellow
  else
    response.return!(request, result, &block)
  end

end

