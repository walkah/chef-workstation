# frozen_string_literal: true

#
# Cookbook Name:: workstation
# Recipe:: _python
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

if platform_family?('mac_os_x')
  package 'python'
  package 'python3'

  execute 'installing virtualenvwrapper' do
    command '/usr/local/bin/pip install virtualenvwrapper'
    user node['user']['id']
  end
end
