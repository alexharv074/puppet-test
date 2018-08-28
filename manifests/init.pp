class profile::base::yum {
  Class['profile::base::yum'] -> [
    Class['profile::base::tools']]
}

class profile::base::tools {
  $packages = [
    'package1',
    'package2'
  ]

  package { $packages:
    ensure => present,
  }

  Class['profile::base::yum'] -> [
    Class['profile::base::tools']]
}

class profile::base {
  include profile::base::yum
  include profile::base::tools
}
