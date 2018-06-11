class test {
  file { '/tmp/foo':
    ensure => file,
  }
  file { '/tmp/bar':
    ensure => file,
  }
}
