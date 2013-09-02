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

# Not using chef-homesick to run as non-root (no chef-gem)
node['homesick_castles'].each do |castle|
  rbenv_script "homesick clone #{castle['name']}" do
    user node['user']['id']
    code "homesick clone #{castle['source']}"
  end  

  rbenv_script "homesick pull #{castle['name']}" do
    user node['user']['id']
    code "homesick pull #{castle['name']} --force"
  end  

  rbenv_script "homesick symlink #{castle['name']}" do
    user node['user']['id']
    code "homesick symlink #{castle['name']} --force"
  end  
end

# sync all specified git repos
node['repos'].each do |target, repo|
  git "#{ENV['HOME']}/#{target}" do
    repository repo['repo']
    reference repo['revision']
    action :sync
    user node['user']['id']
  end
end
