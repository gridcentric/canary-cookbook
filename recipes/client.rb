#
# Cookbook Name:: canary
# Recipe:: client
#
# Copyright 2013, Gridcentric Inc.
#

include_recipe "apt"

::Chef::Resource::AptRepository.send(:include, Gridcentric::Helpers)

if not platform?("ubuntu")
  apt_repository "canary" do
    uri canary_repo
    components ["gridcentric", "multiverse"]
    key gridcentric_key
  end

  package "canary-novaclient" do
    action :install
  end
end

