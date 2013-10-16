#
# Cookbook Name:: workstation
# Recipe:: _packages
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

if platform_family?("mac_os_x")
  node['brew_taps'].each do |tap|
    homebrew_tap tap
  end

  node['brew_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end

  directory "/opt/homebrew-cask/Caskroom" do
    owner node["user"]["id"]
    recursive true
  end

  # Hacky work around for CHEF-2288
  require 'etc'
  home_dir = Etc.getpwnam(node["user"]["id"]).dir

  node['brew_casks'].each do |cask|
    execute "brew cask install #{cask}" do
      user node["user"]["id"]
      environment({"HOME" => home_dir})
      command "brew cask install #{cask}"
    end
  end
end
