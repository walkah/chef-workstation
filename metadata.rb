name             'workstation'
maintainer       'James Walker'
maintainer_email 'walkah@walkah.net'
license          'Apache 2.0'
description      'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports "mac_os_x"

depends "build-essential"
depends "homebrew"
depends "rbenv"
depends "dmg"
depends "virtualbox"

