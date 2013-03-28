#
# Cookbook Name:: canary
# Library:: helpers
#
# Copyright 2013, Gridcentric Inc.
#
# Some common utility functions used in various recipies.
#

module Gridcentric
  module Helpers
    def canary_repo
      return [ node["vms"]["repo"]["url"].chomp("/"),
               "canary",
               node["vms"]["os-version"],
               "ubuntu"
             ].join("/")
    end

    def gridcentric_key
      return [ node["vms"]["repo"]["url"].chomp("/"),
               "gridcentric.key"
             ].join("/")
    end
  end
end
