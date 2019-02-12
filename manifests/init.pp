class test () {
  file { 'folder_a':
    source  => 'file:///tmp/source',
    source_permissions => ignore,
    ensure  => 'directory',
    recurse => true,
    path    => '/tmp/folder_a',
  }

  exec { 'test_cmd':
    command     => '/bin/echo hello',
    subscribe   => File['folder_a'],
    refreshonly => true,
    logoutput   => true,
  }
}

include test
