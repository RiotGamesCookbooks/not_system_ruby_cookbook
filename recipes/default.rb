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

compiletime = node[:system_ruby][:compiletime]

# on apt-based platforms when first provisioning we need to force
# apt-get update at compiletime if we are going to try to install at compiletime
if node[:platform_family] == "debian"
  execute "apt-get update" do
    action :nothing
    not_if do
      ::File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
      ::File.mtime('/var/lib/apt/periodic/update-success-stamp') > Time.now - 86400*2
    end
  end.run_action(:run) if compiletime
end


if node[:system_ruby][:rbenv_version]
  if compiletime
    Chef::Log.warn 'node[:system_ruby][:compiletime] does not currently work with rbenv installs - running at regular time'
    Chef::Log.warn 'This may keep Ruby from being available when you expect it'
  end
  include_recipe "rbenv"
  rbenv_ruby node[:system_ruby][:rbenv_version] do
    global true
  end
else
  node[:system_ruby][:packages].each do |pkg, version|
    package pkg do
      action (compiletime ? :nothing : :install)
      version version
    end.run_action(:install) if compiletime
  end
end
