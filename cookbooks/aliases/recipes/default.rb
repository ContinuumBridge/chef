#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Alias `h` to go home
magic_shell_alias 'h' do
  command 'cd ~'
end

# Set Nano as the default editor
magic_shell_environment 'EDITOR' do
  value 'nano'
end

