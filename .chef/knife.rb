# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chef"
client_key               "#{current_dir}/chef.pem"
chef_server_url          "https://centos-server.c.nimble-artwork-167904.internal/organizations/sap"
cookbook_path            ["#{current_dir}/../cookbooks"]
