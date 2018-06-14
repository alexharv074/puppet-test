class test {
  file { '/tmp/foo':
    ensure  => file,
    content => $fqdn, # $(facter fqdn)
  }

  $os_hash = inline_template("<%= @os.to_s %>")
  file { '/tmp/bar':
    ensure => file,
    content => $os_hash, # $(facter os)
  }

  file { '/tmp/baz':
    ensure  => file,
    content => String($facts['os']),
  }
}

include test
