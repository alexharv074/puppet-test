class hostname (
  String[1] $hostname,
  ) {
  host { 'hostname':
    ensure  => present,
    name    => $hostname,
    ip      => $facts['ipaddress'],
    host_aliases => $hostname,
  }
}

class { 'hostname':
	hostname => "",
}
