#
# Cookbook Name:: workstation
# Attributes:: vagrant
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

node.set['vagrant']['url'] = "http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/Vagrant-1.2.7.dmg"
node.set['vagrant']['checksum'] = "75c720eda0cbe6b2a2b19e38757ba4c34fbc57095ab4cc1459609bd242418129"
node.set['vagrant']['plugins'] = [
  'vagrant-omnibus', 'vagrant-berkshelf', 'vagrant-vmware-fusion'
]


case node['platform_family']
when 'mac_os_x'
  node.set['virtualbox']['url'] = 'http://download.virtualbox.org/virtualbox/4.2.16/VirtualBox-4.2.16-86992-OSX.dmg'
end
