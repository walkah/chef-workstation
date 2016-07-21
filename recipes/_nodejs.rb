# frozen_string_literal: true
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

node['nvm']['user_installs'].each do |install|
  # install nvm for user
  require 'etc'
  home_dir = Etc.getpwnam(node['user']['id']).dir
  nvm_dir = "#{home_dir}/.nvm"
  git nvm_dir do
    user install['user']
    repo 'https://github.com/creationix/nvm.git'
    reference 'master'
    action :sync
  end

  # install versions
  install['versions'].each do |version|
    bash "Installing node.js #{version}..." do
      user install['user']
      code <<-EOH
      source #{nvm_dir}/nvm.sh
      nvm install #{version}
      nvm alias default #{node['nvm']['version']}
      EOH
    end

    # alias default
    bash "Setting #{version} as default..." do
      user install['user']
      code <<-EOH
      source #{nvm_dir}/nvm.sh
      nvm alias default #{version}
      EOH
      only_if { version == install['default_version'] }
    end

    # install global packages
    install['global_packages'].each do |pkg|
      bash "Installing #{pkg} for #{version}..." do
        user install['user']
        code <<-EOH
        source #{nvm_dir}/nvm.sh
        npm i -g #{pkg}
        EOH
      end
    end
  end
end
