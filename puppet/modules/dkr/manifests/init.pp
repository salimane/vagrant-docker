# Module: dkr
#
# A puppet module to setup a rails dkr env  in vagrant-dkr(http://github.com/salimane/vagrant-rails-dkr.git)
#
# Salimane Adjao Moustapha <salimane.moustapha@meltwater.com>
#
# To set any of the following, simply set them as class parameters
# for example:
#
# class{'dkr':
# }
#
class dkr ($username = 'vagrant', $group = 'vagrant') {

  # dkr::adduser { $username:
  #   shell      => '/bin/zsh',
  #   groups     => ['sudo'],
  #   sshkeytype => 'ssh-rsa',
  #   sshkey     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDT2yEfwTAsvOqWCzCas/JmIjuVvMtVN+1g/ZRpdxNvyTep9kYLodcKOMg77RpiqDGdhJVH3XpXbfWE8zGihc1CN1KymhO5L3WhlaAsViDYqirrMPtlOwO897sCmF8TfL7aPWGU4RBQKUv9DfdBzHUaDBOufZZS6bgtMCzqoiWM5n0kjOpZ9imX+53kZJ288wGrF/GahFe17y+q5n0D8If6kZ2mMUjBVW6oCYlLWE0HEZaZt+1R4no1P3keiZ2hn9DIhKytJivrI9aQdAymzpAtRiykzErTGhO6ZK0n9ukXMb9sqWL+4pbCvERs6BRetmVvIb6zT4mpy0xhjhpy8uzH'
  # }

  include dkr::dependencies
  include dkr::memcached
  # include dkr::mysql
  include dkr::postgresql
  include dkr::security
  include dkr::ssh
  include dkr::sysctl

  include dkr::docker
  class { 'firewall' : ensure => 'stopped'}

}
