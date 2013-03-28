Description
===========

Installs the Gridcentric Canary Extension to an Openstack node.

See http://docs.gridcentric.com/canaray for Canary documentation.

Requirements
============

This cookbook has been tested with Chef 0.10.12.

Platforms
---------

This cookbook works on ubuntu.

Cookbooks
---------

This cookbook is dependent on the following cookbooks:

* apt

External Dependencies
---------------------

Canary is an addon to Openstack and is used for reporting metrics from Openstack
hosts. This cookbook should be installed on an Openstack host.

Attributes
==========

The `node["vms"]["os-version"]` attribute specifics the Openstack version of the
node. Valid values for this attribute are "essex" and "folsom". Recipes make use
of this value to select the appropriate package repository.

The attributes under `node["vms"]["repo"]` specify the package repository
location. These should be left at the default value unless unless installing
from a custom repository.

Recipes
=======

host
----
- Installs the canary components for the Openstack host.
- Install on all hosts where metrics will be collected.

api
---
- Installs the canary nova api extensions.
- Install on hosts running nova-api.

horizon
-------
- Installs the canary Horizon extensions.
- Install on hosts running Horiozon.

client
------
- Installs the canary novaclient extensions.
- Install on hosts from which novaclient is used to access your Openstack cluster.

