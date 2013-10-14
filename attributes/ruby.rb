#
# Cookbook Name:: workstation
# Attributes:: ruby
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

node.default['rvm']['user_installs'] = [
  { 'user'            => node['user']['id'],
    'upgrade'         => "stable",
    'default_ruby'    => "2.0.0",
    'rubies' => [
      "2.0.0",
    ],
    'rvmrc'         => {
      'rvm_project_rvmrc'             => 1,
      'rvm_gemset_create_on_use_flag' => 1,
      'rvm_pretty_print_flag'         => 1
    },
    'global_gems'     => [
      { "name" => "bundler"},
      { "name" => "git-up" },
      { "name" => "homesick" },
      { "name" => "lunchy" },
      { "name" => "tmuxinator" }
    ]
  }
]
