# == Class: dkr::redis
#
class dkr::redis {

  class { '::redis::install':
    redis_version     => '2.8.18',
  }
  ::redis::server {
    'instance1':
      redis_memory    => '1g',
      redis_ip        => '0.0.0.0',
      redis_port      => 6379,
      redis_mempolicy => 'allkeys-lru',
      redis_timeout   => 0,
      redis_nr_dbs    => 16,
      redis_loglevel  => 'notice',
      running         => true,
      enabled         => true
  }
}
