# Puppet Module to setup a rails env

Setup dkr module in [vagrant-docker](http://github.com/salimane/vagrant-docker.git)

## Usage

```puppet
include dkr
```

## Required Puppet Modules

* [`epel`](git://github.com/stahnma/puppet-module-epel.git)

* [`stdlib`](git://github.com/puppetlabs/puppetlabs-stdlib.git)

* [`ntp`](git://github.com/puppetlabs/puppetlabs-ntp.git)

* [`concat`](git://github.com/ripienaar/puppet-concat.git)

* [`mysql`](git://github.com/puppetlabs/puppetlabs-mysql.git)

* [`sysctl`](https://github.com/thias/puppet-sysctl)

* [`sudo`](git@github.com:saz/puppet-sudo.git)

* [`firewall`](https://github.com/puppetlabs/puppetlabs-firewall)

## Development

Write Code. Test it. Send a Pull Request.
