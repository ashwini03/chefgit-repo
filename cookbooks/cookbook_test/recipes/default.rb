#
# Cookbook Name:: cookbook_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package == "apache2"
end

package "apache2"  do
	package_name package
	action :install
end
service "apache2" do
	service_name "httpd"
	action [:enable, :start]
end
#template "/var/www/html/index.html" do
#	source "index.html.erb"
#	mode "0644"
#end
