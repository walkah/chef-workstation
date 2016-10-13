# frozen_string_literal: true
#
# Cookbook Name:: workstation
# Attributes:: ruby
#
# Copyright (C) 2016 James Walker
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

default['rbenv']['create_profiled'] = false
default['rbenv']['user_installs'] = [
  {
    'user' => node['user']['id'],
    'rubies' => ['2.3.1'],
    'global' => '2.3.1',
    'gems' => {
      '2.3.1' => [
        { 'name' => 'bundler' },
        { 'name' => 'homesick' },
        { 'name' => 'jekyll' },
        { 'name' => 'rails' },
        { 'name' => 'rubocop' },
        { 'name' => 'tmuxinator' },
        { 'name' => 'travis' }
      ]
    }
  }
]
