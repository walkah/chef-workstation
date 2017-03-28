# frozen_string_literal: true

#
# Cookbook Name:: workstation
# Attributes:: default
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

node.default['homesick']['gem_version'] = '~> 0.9.5'
node.default['homesick_castles'] = [
  { 'name'   => 'dotfiles',
    'source' => 'https://github.com/walkah/dotfiles.git' }
]

node.default['repos'] = {
  '.oh-my-zsh' => {
    'repo' => 'https://github.com/robbyrussell/oh-my-zsh.git',
    'revision' => 'HEAD'
  }
}
