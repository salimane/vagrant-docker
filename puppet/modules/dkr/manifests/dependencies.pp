# Class: dkr::dependencies
#
# This class installs common configuration for all dkr nodes
#
# Parameters:
#
# Actions:
#   - Setup self-services team access to the servers
#   - Set sysctl variable for some improved performance
#
# Requires:
#   - epel
#   - webtatic
#   - userman_mw
#
# Sample Usage:
#   include dkr::dependencies
#
#
class dkr::dependencies($username = 'vagrant') {
  include epel
  include dkr::webtatic
  include dkr::sysctl
  $packages = ['tmux', 'curl', 'wget', 'glances', 'iotop', 'htop', 'nfs-utils', 'ncdu', 'nano', 'git']
  ensure_resource('package', $packages, { ensure => installed })
  file { '/etc/ssh/sshd_config' :  }

}
