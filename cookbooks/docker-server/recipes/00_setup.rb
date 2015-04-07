#
# Cookbook Name:: docker-server
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package 'curl'

include_recipe 'docker'

docker_image 'ubuntu:14.04'
