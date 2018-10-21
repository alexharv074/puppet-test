class hostname (
  Pattern[/^[A-Z]{3}[LW][A-Z]{3}\d{3}$/] $hostname,
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
