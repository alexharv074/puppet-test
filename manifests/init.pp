class foo () {
  $array_of_ip_addresses = ['10.0.0.10', '10.0.0.11']
  $ip = '10.0.0.10'
  $ipaddress_eth0 = '10.0.0.10'
  file { '/tmp/foo':
    ensure  => file,
    content => template('foo/mytemplate.erb'),
  }
}
