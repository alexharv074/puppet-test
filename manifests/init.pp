class foo {
  # Hiera lookups
  $location = 'x.x.x.x:/stats'
  $location2 = 'x.x.x.x:/scratch'

  tag        'new_mount'

  file { '/data': ensure => directory }

  file { '/data/stats':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => File['/data'],
    tag     => 'new_mount',
  }

  mount { '/data/stats':
    ensure  => mounted,
    fstype  => 'nfs',
    device  => $location,
    options => 'defaults,nodev,nosharecache',
    require => File['/data/stats'],
    tag     => 'new_mount'
  }

  file { '/data/ops':
    ensure  => directory,
    owner   => 'root',
    group   => 'mail',
    mode    => '0775',
    require => File['/data'],
    tag     => 'new_mount',
  }

  mount { '/data/ops':
    ensure  => mounted,
    fstype  => 'nfs',
    device  => $location2,
    options => 'defaults,nodev,nosharecache',
    require => File['/data/ops'],
    tag     => 'new_mount',
  }

  file { '/data/scratch':
    ensure  => directory,
    owner   => 'root',
    group   => 'mail',
    mode    => '0775',
    require => File['/data'],
    tag     => 'new_mount',
  }

  mount { '/data/scratch':
    ensure  => mounted,
    fstype  => 'nfs',
    device  => $location2,
    options => 'defaults,nodev,nosharecache',
    require => File['/data/scratch'],
    tag     => 'new_mount',
  }
}
