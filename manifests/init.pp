class test {
  file { '/tmp/foo':
    ensure  => file,
    content => 'I am foo',
  }
  File['/tmp/foo'] {
    mode => '0400',
  }
}
