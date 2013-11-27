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

knife[:role]                  = "cb-prod"

# Ubuntu 12.04 LTS 64bit:
# US 12.04
#knife[:image]                 = "ami-f968f8c9"
# EU 12.04
knife[:image]                 = "ami-8fb1a3fb"
knife[:use_sudo]              = "true"

# Some defaults
#knife[:region]                = "us-west-2"
#knife[:availability_zone]     = "us-west-2c"
knife[:region]                = "eu-west-1"
knife[:availability_zone]     = "eu-west-1b"
knife[:ssh_user]              = "ubuntu"
#knife[:name]                  = "cb-dev"
knife[:name]                  = "cb-prod"
knife[:flavor]                = "t1.micro"

knife[:aws_access_key_id]  = "AKIAIYCGHZLABUBVBXRQ"
#knife[:aws_ssh_key_id] = 'cb-dev'
knife[:aws_ssh_key_id] = 'cb-prod'
knife[:aws_secret_access_key] = "FGvbHUny2eSQKy5vIkoEmVYzHSspbk9tFET4PN6M"


