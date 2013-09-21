name             'workstation'
maintainer       'James Walker'
maintainer_email 'walkah@walkah.net'
license          'Apache 2.0'
description      'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.5.0'

supports "mac_os_x"

depends "apt",             "~> 2.0.0"
depends "build-essential", "~> 1.4.2"
depends "homebrew",        "~> 1.4.0"
depends "rbenv"
depends "ruby_build",      "~> 0.8.0"

