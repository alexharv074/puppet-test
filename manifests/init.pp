class test {
  include firewalld

  firewalld_port { 'Open port 1337 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 1337,
    protocol => 'tcp',
  }
}
