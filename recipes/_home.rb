# frozen_string_literal: true
#
# Cookbook Name:: workstation
# Recipe:: _home
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

# Ensure zsh is the shell
user node['user']['id'] do
  shell '/bin/zsh'
end

chef_gem 'homesick'

require 'etc'
home_dir = Etc.getpwnam(node['user']['id']).dir
env = { 'USER' => node['user']['id'], 'HOME' => home_dir.to_s }
# Not using chef-homesick to run as non-root (no chef-gem)
node['homesick_castles'].each do |castle|
  execute "homesick clone #{castle['source']} --force" do
    user node['user']['id']
    environment env
  end
  execute "homesick pull #{castle['name']} --force" do
    user node['user']['id']
    environment env
  end
  execute "homesick symlink #{castle['name']} --force" do
    user node['user']['id']
    environment env
  end
end

# mackup restore - make sure it's in sync
execute 'mackup -f restore' do
  user node['user']['id']
  environment env
end

# sync all specified git repos
node['repos'].each do |target, repo|
  git "#{home_dir}/#{target}" do
    repository repo['repo']
    reference repo['revision']
    action :sync
    user node['user']['id']
  end
end
