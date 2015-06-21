#!/bin/sh
rpm -qa puppetlabs-release | grep 'puppetlabs-release-7' || rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
rpm -qa epel-release | grep 'epel-release-7' || rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -qa remi-release | grep 'remi-release-7' || rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -qa ruby-devel | grep 'ruby-devel-2.0.0' || yum -y install ruby-devel
rpm -qa ruby-augeas | grep 'ruby-augeas-0.5.0' || yum -y install ruby-augeas-0.5.0
# rpm -qa ruby-json | grep 'ruby-json-1.5.5' || yum -y install ruby-json-1.5.5
rpm -qa puppet | grep 'puppet-3.8.1' || yum -y install puppet-3.8.1
rpm -qa augeas-libs | grep 'augeas-libs-1.1.0' || yum -y install augeas-libs-1.1.0
rpm -qa augeas-devel | grep 'augeas-devel-1.1.0' || yum -y install augeas-devel-1.1.0
rpm -qa augeas | grep 'augeas-1.1.0' || yum -y install augeas-1.1.0
gem list | grep 'puppet.*3.8.1' || gem install puppet -v3.8.1
gem list | grep 'ruby-augeas.*0.5.0' || gem install ruby-augeas -v0.5.0
gem list | grep 'deep_merge.*1.0.1' || gem install deep_merge -v1.0.1
yum update -y
yum --enablerepo=epel update -y
yum --enablerepo=remi update -y
