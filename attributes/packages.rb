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

default['brew_taps'] = %w(
  homebrew/binary
  homebrew/dupes
  caskroom/fonts
)

default['homebrew']['formula'] = %w(
  brew-cask
  dnsmasq
  drush
  gist
  git
  git-flow
  heroku-toolbelt
  htop-osx
  hub
  imagemagick
  markdown
  mongodb
  mtr
  mysql
  openssl
  packer
  pwgen
  redis
  solr
  ssh-copy-id
  tmux
  wget
)

default['homebrew']['casks'] = %w(
  adium
  alfred
  delivery-status
  dropbox
  firefox
  font-inconsolata
  flux
  github
  google-chrome
  google-hangouts
  hazel
  iterm2
  lastpass
  nvalt
  rescuetime
  rdio
  sequel-pro
  skype
  vagrant
  virtualbox
  vmware-fusion
)
