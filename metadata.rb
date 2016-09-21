# frozen_string_literal: true
name 'workstation'
maintainer 'James Walker'
maintainer_email 'walkah@walkah.net'
source_url 'https://github.com/walkah/chef-workstation'
issues_url 'https://github.com/walkah/chef-workstation/issues'
license 'Apache 2.0'
description 'Installs/Configures my workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.13.6'

supports 'mac_os_x'
supports 'ubuntu'

depends 'apt'
depends 'homebrew'
depends 'mac_os_x'
depends 'rvm'
depends 'sudo'
