# The Openstack version on the node. Value should be either "essex" or "folsom".
default["vms"]["os-version"] = "folsom"

# Repository parameters. These control how the gridcentric repositories are
# accessed during the node setup.
default["vms"]["repo"]["url"] = "http://downloads.gridcentriclabs.com/packages"
