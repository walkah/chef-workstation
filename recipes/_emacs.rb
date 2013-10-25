#
# Cookbook Name:: workstation
# Recipe:: _emacs
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

package "emacs" do
  options "--cocoa"
  action :install
end

require 'etc'
home_dir = Etc.getpwnam(node["user"]["id"]).dir

# set up cask
git "#{home_dir}/.cask" do
  repository "https://github.com/cask/cask.git"
  reference "master"
  action :sync
end

# cask install 
execute "cask install" do
  user node["user"]["id"]
  cwd "#{home_dir}/.emacs.d"
  environment({"HOME" => home_dir})
  command "#{home_dir}/.cask/bin/cask install"
end

# cask update
execute "cask update" do
  user node["user"]["id"]
  cwd "#{home_dir}/.emacs.d"
  environment({"HOME" => home_dir})
  command "#{home_dir}/.cask/bin/cask update"
end
