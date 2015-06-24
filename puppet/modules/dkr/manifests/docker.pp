# == Class: dkr::docker
#
class dkr::docker {
  class { '::docker':
    manage_kernel => false,
    use_upstream_package_source => true,
    tcp_bind    => 'tcp://127.0.0.1:4243',
    socket_bind => 'unix:///var/run/docker.sock',
    # version => 'latest',
    dns => '8.8.8.8',
    docker_users => [ 'vagrant' ],
    log_level => 'debug',
    extra_parameters => undef
  }

  ::docker::image { 'nginx': }

  ::docker::run { 'helloworld':
    image   => 'nginx',
    command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  }

  ::docker::exec { 'helloworld-uptime':
    # detach    => true,
    container => 'helloworld',
    command   => 'uptime',
    tty       => true,
    require   => Docker::Run['helloworld']
  }
}
