# vim: set paste
class a {
  File {
    mode => '0755',
  }
  file { '/tmp/foo':
    ensure => absent,
  }
  $x = 'I, Foo'
}

class a::b (
  $y = $a::x  # default from class a.
) inherits a {

  # Override /tmp/foo's ensure
  # and content attributes.

  File['/tmp/foo'] {
    ensure  => file,
    content => $y,
  }

  # Both /tmp/foo and /tmp/bar
  # will receive the default file
  # mode of 0755.

  file { '/tmp/bar':
    ensure => file,
  }
}
