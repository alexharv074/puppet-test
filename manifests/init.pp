class am_rgw_profile::am_rgw_ports {
  if ('xarsiiq1xd' in $hostname) {
    [
      {
        'port'     => '2470',
        'protocol' => 'tcp',
      },
      {
        'port'     => '2472',
        'protocol' => 'tcp',
      },
    ]
  } elsif ('xarsiiq1xe' in $hostname) {
    [
      {
        'port'     => '2492',
        'protocol' => 'tcp',
      },
      {
        'port'     => '2516',
        'protocol' => 'tcp',
      },
    ]
  }
  firewalld::custom_service{'am_rgw_ports':
    short       => 'am_rgw_ports',
    description => 'IIQ IaaS gateway wg6561',
    port        => $port,
  }
  firewalld_service { 'Allow am_racf_ports services for IIQ gateway servers':
    ensure  => 'present',
    service => 'am_rgw_ports',
    zone    => 'Cali'
  }
}
