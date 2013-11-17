#
# Cookbook Name:: imagetools
# Recipe:: default
#
# Copyright 2013, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

include_recipe "imagetools::datasets"

git "/opt/local/imagetools" do
  repository "git://github.com/oldbayindustries/imagetools.git"
  reference "master"
  user "root"
  group "root"
  action :sync
end
