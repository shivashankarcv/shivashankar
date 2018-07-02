#
# Cookbook:: git_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

user 'www_admin' do
  comment 'User www_admin'
  home '/home/www_admin'
  shell '/bin/bash'
end

directory '/var/www/customers/public_html' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

file '/var/www/customers/public_html/index.php' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'www_admin'
  group 'www_admin'
end
