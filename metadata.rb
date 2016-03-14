name 'workstation'
maintainer 'James Walker'
maintainer_email 'walkah@walkah.net'
license 'Apache 2.0'
description 'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.12.0'

supports 'mac_os_x'
supports 'ubuntu'

depends 'apt'
depends 'homebrew'
depends 'mac_os_x'
depends 'rvm'
depends 'sudo'
depends 'vagrant'
