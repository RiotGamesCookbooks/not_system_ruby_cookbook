#
# Cookbook Name:: not_system_ruby
# Attributes:: default
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

case node[:platform]
when "fedora"
  default[:system_ruby][:package]         = "ruby"
  default[:system_ruby][:package_version] = "1.9.3.194-10.1.fc17"
when "centos", "redhat", "suse", "scientific", "amazon"
  default[:system_ruby][:package]         = "ruby"
  default[:system_ruby][:package_version] = "1.8.7.352-7.el6_2"
when "ubuntu"
  default[:system_ruby][:package]         = "ruby1.9.1"
  default[:system_ruby][:package_version] = "1.9.3.0-1ubuntu1"
when "debian"
  default[:system_ruby][:package]         = "ruby"
  default[:system_ruby][:package_version] = "4.8"
end

default[:system_ruby][:rbenv_version]     = nil
