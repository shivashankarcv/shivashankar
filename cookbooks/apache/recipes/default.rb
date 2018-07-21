#
# Cookbook:: git_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end
  service "httpd" do
 action [ :enable, :start ]
end
cookbook_file "/var/www/html/index.html" do
 source "index.html"
 mode "0644"
end
