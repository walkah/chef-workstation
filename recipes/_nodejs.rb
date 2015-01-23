#
# Cookbook Name:: workstation
# Recipe:: _nodejs
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

git node['nvm']['directory'] do
  user node['user']['id']
  repo 'https://github.com/creationix/nvm.git'
  reference 'master'
  action :sync
end

bash "Installing node.js #{node['nvm']['version']}..." do
  user node['user']['id']
  code <<-EOH
  #{node['nvm']['source']}
  nvm install #{node['nvm']['version']}
  nvm alias default #{node['nvm']['version']}
  EOH
end
