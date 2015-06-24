# == Class: dkr::postgresql
#
class dkr::postgresql {
  class {'::postgresql::server': }
}
