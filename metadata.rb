maintainer       "Gridcentric Inc."
maintainer_email "support@gridcentric.com"
license          "All rights reserved"
description      "Installs/Configures Canary"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ ubuntu }.each do |os|
  supports os
end

%w{ apt }.each do |dep|
  depends dep
end
