Description
===========

Installs Ruby.

This is a crude (and temporary) workaround to cookbooks that assume
they have Ruby available. Now that the Chef omnibus installer uses a
private Ruby for Chef, this is not a valid assumption.

# Requirements

* Chef 10
* Centos / Redhat / Fedora / Ubuntu / Debian

# Attributes

* `system_ruby[:packages]`         - Hash of packages and versions to install (default: platform specific, highest available)
* `system_ruby[:rbenv_version]`    - Version to install via rbenv globally (requires rbenv cookbook ~>1.3.1)

LICENSE AND AUTHOR
==================

Author:: Michael Ivey (<michael.ivey@riotgames.com>)

Copyright 2012-2013, Riot Games

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.