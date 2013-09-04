#
# Cookbook Name:: python-setuptools
# Recipe:: default
# Author:: Leif Högberg <leihog@gmail.com>
#
# No rights reserved - Do Redistribute
#

python_pip "distribute" do
    action :install
end

package "python-setuptools" do
  action :install
end

