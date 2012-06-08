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

ruby ruby-libs ruby-devel ruby-docs ruby-ri ruby-irb ruby-rdoc ruby-mode rubygems


case node[:platform]
when "fedora"
  default[:system_ruby][:packages] = {
    "ruby"       => "1.9.3.194-10.1.fc17",
    "ruby-devel" => "1.9.3.194-10.1.fc17",
    "rubygems"   => "1.8.24-1.fc17"
  }
when "centos", "redhat", "suse", "scientific", "amazon"
  default[:system_ruby][:packages] = {
    "ruby"       => "1.8.7.352-7.el6_2",
    "ruby-devel" => "1.8.7.352-7.el6_2",
    "rubygems"   => "1.3.7-1.el6"
  }
when "ubuntu"
  default[:system_ruby][:packages] = {
    "ruby1.9.1"     => "1.9.2.290-2",
    "ruby1.9.1-dev" => "1.9.2.290-2"
  }
when "debian"
  default[:system_ruby][:packages] = {
    "ruby1.8"     => "1.8.7.358-4",
    "ruby1.8-dev" => "1.8.7.358-4",
    "rubygems"    => "1.8.15-1"
end

default[:system_ruby][:rbenv_version]     = nil
