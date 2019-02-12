class test () {
  file { 'folder_a':
    source  => 'puppet:///modules/folder_a',
    ensure  => 'directory',
    recurse => true,
    path    => 'C:/folder_a',
    source_permissions => ignore,
    notify  => Exec['install.bat'],
  }

  exec { 'test_cmd':
    path      => $::path,
    command   => 'cmd.exe /c C:/test.cmd',
    provider  => windows,
    subscribe => File['folder_a'],
    logoutput => true,
    refreshonly => true,
  }
}

include test
