#
# Cookbook Name:: workstation
# Attributes:: default
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

node.default['user']['id'] = 'walkah'

node.default['authorization']['sudo']['users'] = ['walkah']
node.default['authorization']['sudo']['passwordless'] = true
node.default['authorization']['sudo']['sudoers_defaults'] = [
  'env_reset',
  'env_keep += "BLOCKSIZE"',
  'env_keep += "COLORFGBG COLORTERM"',
  'env_keep += "__CF_USER_TEXT_ENCODING"',
  'env_keep += "CHARSET LANG LANGUAGE LC_ALL LC_COLLATE LC_CTYPE"',
  'env_keep += "LC_MESSAGES LC_MONETARY LC_NUMERIC LC_TIME"',
  'env_keep += "LINES COLUMNS"',
  'env_keep += "LSCOLORS"',
  'env_keep += "TZ"',
  'env_keep += "DISPLAY XAUTHORIZATION XAUTHORITY"',
  'env_keep += "EDITOR VISUAL"',
  'env_keep += "HOME MAIL"'
]
