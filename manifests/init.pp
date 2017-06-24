class foo {
  case $::operatingsystem {
    'Darwin': {
      file { '/tmp/foo':
        ensure => file,
      }
    }
    'RedHat': {
    }
    default: { warning("OS : ${::operatingsystem} is not (yet) supported") }
  }
}
