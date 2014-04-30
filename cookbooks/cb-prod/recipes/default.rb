#
# Cookbook Name:: cb-prod
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

django_config = data_bag_item('production', 'django')

template "/etc/sudoers" do
  path "#{ENV['HOME']}/.bashrc"
  source "bashrc.erb"
  owner "ubuntu"
  group "ubuntu"
  variables(
     django_settings_module: django_config['DJANGO_SETTINGS_MODULE'],
     django_secret_key: django_config['DJANGO_SECRET_KEY'],
     facebook_secret_key: django_config['FACEBOOK_SECRET_KEY']
  )
end

template "/etc/sudoers" do
  path "/etc/supervisor.d/cb_uwsgi_for_nginx.ini"
  source "cb_uwsgi_for_nginx.erb"
  owner "ubuntu"
  group "ubuntu"
  variables(
     django_settings_module: django_config['DJANGO_SETTINGS_MODULE'],
     django_secret_key: django_config['DJANGO_SECRET_KEY'],
     facebook_secret_key: django_config['FACEBOOK_SECRET_KEY']
  )
end

template "/etc/sudoers" do
  path "/etc/supervisor.d/cb_uwsgi_for_node.ini"
  source "cb_uwsgi_for_node.erb"
  owner "ubuntu"
  group "ubuntu"
  variables(
     django_settings_module: django_config['DJANGO_SETTINGS_MODULE'],
     django_secret_key: django_config['DJANGO_SECRET_KEY'],
     facebook_secret_key: django_config['FACEBOOK_SECRET_KEY']
  )
end
