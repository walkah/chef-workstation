#
# Cookbook Name:: workstation
# Attributes:: packages
#
# Copyright (C) 2013 James Walker
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['brew_taps'] = [
  'homebrew/binary',
  'homebrew/dupes',
  'phinze/cask'
]

node.default['brew_packages'] = [
  'apple-gcc42',
  'brew-cask',
  'dnsmasq',
  'drush',
  'gist',
  'git',
  'git-flow',
  'heroku-toolbelt',
  'htop-osx',
  'hub',
  'imagemagick',
  'markdown',
  'mongodb',
  'mysql',
  'openssl',
  'packer',
  'postgresql',
  'pwgen',
  'redis',
  'solr',
  'ssh-copy-id',
  'tmux',
  'wget'
]

node.default['brew_casks'] = [
  'adium',
  'alfred',
  'authy-bluetooth',
  'cyberduck',
  'dropbox',
  'firefox',
  'f-lux',
  'github',
  'google-chrome',
  'google-hangouts',
  'hazel',
  'iterm2',
  'lastpass-universal',
  'minecraft',
  'nv-alt',
  'rdio',
  'sequel-pro',
  'skype',
  'sourcetree',
  'vagrant',
  'virtualbox'
]
