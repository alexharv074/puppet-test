class test {
  file {'/tmp/www':
    ensure    => directory,
    recurse   => true,
    purge     => true,
    force     => true,
  } ->
  file {'/tmp/www/html':
    ensure => directory,
    recurse => true,
    purge   => true,
  } ->
  file {'/tmp/www/html/appicon.ico':
    ensure  => file,
    content => ''
  }
}

include test
