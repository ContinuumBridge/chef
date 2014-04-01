#
# Cookbook Name:: cb-base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'Update the OS' do
  command "sudo apt-get -y update && sudo apt-get -y dist-upgrade"
  action :run
end

template ".vimrc" do
  path "#{ENV['HOME']}/.vimrc"
  source "vimrc"
  owner "ubuntu"
  group "ubuntu"
end

template ".bashrc" do
  path "#{ENV['HOME']}/.bashrc"
  source "bashrc"
  owner "ubuntu"
  group "ubuntu"
end

execute 'Install libpq, python-dev and python-software-properties' do
  command "sudo apt-get -y install libpq-dev python-dev python-software-properties"
  action :run
end

include_recipe "cb-base::nodejs"

execute 'Install Socat' do
  command "sudo apt-get -y install socat"
  action :run
end

execute 'Link up Nginx config' do
  command "sudo ln -sf /home/ubuntu/bridge-controller/server_files/cb_nginx.conf /etc/nginx/sites-enabled/"
  action :run
end

execute 'Link up Supervisord config' do
  command "sudo ln -sf /home/ubuntu/bridge-controller/server_files/cb_supervisord.conf /etc/supervisor.d/cb_supervisord.conf"
  action :run
end

execute 'Install virtualenvwrapper' do
  command "sudo apt-get install -y virtualenvwrapper"
  action :run
end

execute 'Install Htop' do
  command "sudo apt-get -y install htop"
  action :run
end

