class opstools {

  # We assume the existence of a custom fact opsuser.
  #
  assert_type(Boolean, $facts['opsuser'])

  $ensure = $facts['opuser'] ? {
    true  => installed,
    false => absent,
  }

  # Or get these from Hiera.
  #
  $packages = {
    'rpm' => [
      'lsof',
      'strace',
      'tcpdump',
    },
    'pip' => [
      'awscli',
    ]
  }

  keys($packages).each |$provider| {
    package { $packages[$provider]:
      ensure   => $ensure,
      provider => $provider,
    }
  }
}
