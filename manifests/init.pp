class test {
  file_line { 'qux':
    path => '/tmp/alex',
    line => 'qux',
  }
  exec { '/bin/echo hello world':
    refreshonly => true,
    subscribe   => File_line['qux'],
  }
}

include test
