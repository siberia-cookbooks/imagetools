#
# Cookbook Name:: imagetools
# Recipe:: datasets
#
# Copyright 2013, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

%w{
  seed-1.0.json
  seed-1.0.zfs.gz
  seed-1.1.json
  seed-1.1.zfs.gz
  seed-1.2.json
  seed-1.2.zfs.gz
}.each do |f|
  remote_file "#{Chef::Config[:file_cache_path]}/#{f}" do
    source "http://pkgsrc.smartos.org/datasets/#{f}"
  end
end
