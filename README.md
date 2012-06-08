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

