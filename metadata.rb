name             'workstation'
maintainer       'James Walker'
maintainer_email 'walkah@walkah.net'
license          'Apache 2.0'
description      'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.9.1'

supports "mac_os_x"

depends "apt",             "~> 2.0.0"
depends "homebrew"         
depends "homesick",        "~> 0.4.0"
depends "mac_os_x",        "~> 1.4.2"
depends "nvm",             "~> 0.1.0"
depends "rvm"
