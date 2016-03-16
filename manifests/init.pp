class test {
  file {'/etc/resolv.conf':
    ensure  => 'present',
    mode    => '0640',
    group   => 'root',
    owner   => 'root',
    content => "search server.com\n",
  }
}
