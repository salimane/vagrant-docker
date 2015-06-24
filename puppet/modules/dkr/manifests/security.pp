# == Class: dkr::security
#
class dkr::security {

  $packages = ['fail2ban', 'htop', 'logwatch']
  ensure_resource('package', $packages, { ensure => installed })
  
}
