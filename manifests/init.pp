class foo () {
  Exec {
    path => '/usr/local/bin',
    refreshonly => true,
  }

  file { '/tmp/file-1':
    ensure  => file,
    content => 'file-1-content\n',
  }

  exec { 'exec-1':
    command   => 'sudo cmd-1',
    subscribe => File['/tmp/file-1'],
  }
  exec { 'exec-2':
    command   => 'sudo cmd-2',
    subscribe => File['/tmp/file-1'],
    require   => Exec['exec-1'],
  }
  exec { 'exec-3':
    command   => 'sudo cmd-3',
    subscribe => File['/tmp/file-1'],
    require   => Exec['exec-2'],
  }
}
