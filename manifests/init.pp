class profile::base::yum {
}

class profile::base::tools {
  require profile::base::yum

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
}
