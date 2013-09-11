name             'workstation'
maintainer       'James Walker'
maintainer_email 'walkah@walkah.net'
license          'Apache 2.0'
description      'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.1'

supports "mac_os_x"

depends "apt"
depends "build-essential"
depends "dmg"
depends "homebrew",  "~> 1.4.0"
depends "rbenv"
depends "ruby_build"
depends "vagrant"
depends "virtualbox"

