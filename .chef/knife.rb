# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "continuumbridge"
client_key               "#{current_dir}/continuumbridge.pem"
validation_client_name   "continuumbridge-validator"
validation_key           "#{current_dir}/continuumbridge-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/continuumbridge"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
