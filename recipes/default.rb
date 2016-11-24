# frozen_string_literal: true
#
# Cookbook Name:: workstation
# Recipe:: default
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

include_recipe 'workstation::_base'
include_recipe 'workstation::_packages'
include_recipe 'workstation::_home'
# include_recipe 'workstation::_ruby'
# include_recipe 'workstation::_python'
# include_recipe 'workstation::_nodejs'
include_recipe 'workstation::_atom'
include_recipe 'workstation::_settings'
