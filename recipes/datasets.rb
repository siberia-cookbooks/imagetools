#
# Cookbook Name:: imagetools
# Recipe:: datasets
#
# Copyright 2013, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

checksums = {
  "seed-1.0.json" => "abb55e1869ac7acb7bc20c72b7304183110f7bb13210a16e550cf3a2727acda8",
  "seed-1.0.zfs.gz" => "bbdba63714b986304e0d9475b6c2f203f6e45b5923c619b08da7c8a74dd59348",
  "seed-1.1.json" => "95ab4f85e0dbab37926fa29f0d920e62cb93560421c3b755afc27c51e38e0b04",
  "seed-1.1.zfs.gz" => "c7c1c8f908debc15397a3a3a55598a0fff112fdac0bc80c49602eab75e52b665",
  "seed-1.2.json" => "968388fefc1c7e5d43bd5991ff3b5331e9a996aa2dc6abe729fa59a458ff8678",
  "seed-1.2.zfs.gz" => "49438822bd51064e5df014c7a31602e9931f00c009ff3d841221837fc83e603a",
}

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
    checksum checksums[f]
  end
end
