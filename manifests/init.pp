class test {
  class { 'apt':
    purge => {
      "/etc/apt/sources.list" => true
    }
  }
  apt::source { "archive.ubuntu.com-${lsbdistcodename}":
    location => 'http://archive.ubuntu.com/ubuntu',
    key      => '630239CC130E1A7FD81A27B140976EAF437D05B5',
    repos    => 'main universe multiverse restricted',
  }
  Apt::Source["archive.ubuntu.com-${lsbdistcodename}"] -> Package['dirmngr']
}

#include test
