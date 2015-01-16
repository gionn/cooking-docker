#
# Cookbook Name:: docker-server
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'docker'

image_name = 'tutum/tomcat:7.0'

docker_image image_name do
  notifies :redeploy, 'docker_container[tomcat]'
end

docker_container 'tomcat' do
  image image_name
  container_name 'tomcat'
  detach true
  action :run
end
