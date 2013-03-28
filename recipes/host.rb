#
# Cookbook Name:: canary
# Recipe:: host
#
# Copyright 2013, Gridcentric Inc.
#

include_recipe "apt"

::Chef::Resource::AptRepository.send(:include, Gridcentric::Helpers)

if platform?("ubuntu")
  apt_repository "canary" do
    uri canary_repo
    components ["gridcentric", "multiverse"]
    key gridcentric_key
  end

  package "canary-host" do
    action :install
    options "-o Dpkg::Options::='--force-confold'"
  end
end

