name 'workstation'
maintainer 'James Walker'
maintainer_email 'walkah@walkah.net'
license 'Apache 2.0'
description 'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.10.10'

supports 'mac_os_x'
supports 'ubuntu'

depends 'apt'
depends 'homebrew', '~> 1.12.0'
depends 'mac_os_x', '~> 1.4.6'
depends 'rvm'
depends 'sudo', '~> 2.7.1'
