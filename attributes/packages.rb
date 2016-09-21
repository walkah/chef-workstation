# frozen_string_literal: true
#
# Cookbook Name:: workstation
# Attributes:: packages
#
# Copyright (C) 2013-2015 James Walker
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

default['homebrew']['taps'] = %w(
  homebrew/binary
  homebrew/command-not-found
  homebrew/dupes
  homebrew/php
  caskroom/fonts
)

default['homebrew']['formulas'] = %w(
  dnsmasq
  docker-cloud
  elixir
  gist
  git
  git-flow
  gsl
  heroku-toolbelt
  htop
  mas
  mtr
  openssl
  pwgen
  reattach-to-user-namespace
  ssh-copy-id
  tmux
  wget
)

default['homebrew']['casks'] = %w(
  adobe-creative-cloud
  alfred
  chefdk
  dash
  docker
  dropbox
  firefox
  font-inconsolata
  font-hack
  flux
  github-desktop
  google-chrome
  google-hangouts
  hazel
  istat-menus
  iterm2
  java
  keybase
  lastpass
  nvalt
  rescuetime
  skype
  slack
  sonos
  spotify
  virtualbox
)
