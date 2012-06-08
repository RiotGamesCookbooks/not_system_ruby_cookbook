#
# Cookbook Name:: not_system_ruby
# Recipe:: default
#
# Author:: Michael Ivey (<ivey@gweezlebur.com>)
#
# Copyright 2012, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node[:system_ruby][:rbenv_version]
  include_recipe "rbenv"
  rbenv_ruby node[:system_ruby][:rbenv_version] do
    global true
  end
else
  node[:system_ruby][:packages].each do |pkg, version|
    package pkg do
      action :install
      version version
    end
  end
end
