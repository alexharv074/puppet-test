class profile::base::yum {
}

class profile::base::tools {
  $packages = [
    'package1',
    'package2'
  ]

  package { $packages:
    ensure => present,
  }
}

class profile::base {
  include profile::base::yum
  include profile::base::tools

  Class['profile::base::yum'] -> [
    Class['profile::base::tools']]
}
