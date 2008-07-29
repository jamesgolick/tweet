$LOAD_PATH << File.dirname(__FILE__)
require 'rubygems'
require 'activesupport'
require 'rest_client'

module TempoCli
  CONFIG_FILE = ENV['HOME']+'/.tempo'
  
  class << self
    attr_accessor :username, :password
    
    def create_entry(command)
      get_credentials!
      resource = RestClient::Resource.new 'https://app.keeptempo.com/entries', username, password
      resource.post({:command => command}.to_xml(:root => 'entry'), :content_type => 'application/xml', :accept => 'application/xml')
    end
    
    def get_credentials!
      abort "You must create a #{CONFIG_FILE} file to use this CLI." unless File.exist?(CONFIG_FILE)
      config = YAML.load(File.read(CONFIG_FILE)).symbolize_keys
      @username, @password = config[:username], config[:password]
    end
  end
end
