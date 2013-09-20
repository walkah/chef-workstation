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

  # Hacky work around for CHEF-2288
  require 'etc'
  home_dir = Etc.getpwnam(node["user"]["id"]).dir

  node['brew_packages'].each do |pkg|
    outdated = system("brew outdated 2>/dev/null | grep -q '^#{pkg}$'")

    if outdated
      execute "brew upgrade #{pkg}" do
        user node["user"]["id"]
        environment ({"HOME" => home_dir})
        command "brew upgrade #{pkg}"
      end
    else
      execute "brew install #{pkg}" do
        user node["user"]["id"]
        environment ({"HOME" => home_dir})
        command "brew install #{pkg}"
      end
    end
  end
end
