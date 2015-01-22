#
# Cookbook Name:: workstation
# Attributes:: settings
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

node.default['mac_os_x']['settings_user'] = node['user']['id']

node.default['mac_os_x']['settings']['dock'] = {
  'domain' => 'com.apple.dock',
  'autohide' => true,
  'magnification' => false,
  'orientation' => 'left'
}

node.default['mac_os_x']['settings']['finder'] = {
  'domain' => 'com.apple.finder',
  'ShowHardDrivesOnDesktop' => true,
  'ShowMountedServersOnDesktop' => true,
  'ShowRemovableMediaOnDesktop' => true
}

node.default['mac_os_x']['settings']['screensaver'] = {
  'domain' => 'com.apple.screensaver',
  'askForPassword' => 1,
  'askForPasswordDelay' => 0
}
