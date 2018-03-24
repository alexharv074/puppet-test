class test {
  exec { '/bin/mkdir -p /tmp/bar ; /usr/bin/touch /tmp/bar/{a,b,c,d,f}': }

  file { '/tmp/foo':
    ensure  => directory,
    source  => '/tmp/bar',
    recurse => true,
    purge   => true,
  }

  file { '/tmp/foo/e':
    ensure => file,
  }
}

include test
