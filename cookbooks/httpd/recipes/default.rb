#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.
#package 'httpd' do
#  action :install
#end

#service 'httpd' do
#  action [ :enable, :start ]
#end

#package platform_package_httpd

#service platform_service_httpd do
#  action [:enable, :start]
#end
#cookbook_file "/var/www/html/index.html" do
#  source "index.html"
#  mode "0644"
#end
#hello_httpd 'greet world' do
#  greeting "Hello"
#  action :create
#end

#execute 'systemctl start httpd' do
  #only_if { index_exists? }
#  not_if { index_exists? }
#end
#
include_recipe 'httpd::install'
include_recipe 'httpd::config'
include_recipe 'httpd::service'
