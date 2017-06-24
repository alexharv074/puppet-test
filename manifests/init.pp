class foo {
  $connections = {
    'connection_name1' => {
      'username' => 'user1',
      'password' => 'pass1',
    },
    'connection_name2' => {
      'username' => 'user2',
      'password' => 'pass2',
    },
  }

  $jdbc_default = {
    'testWhileIdle'                => true,
    'testOnBorrow'                 => true,
    'testOnReturn'                 => false,
    'timeBetweenEvictionRunsMillis'=> '30000',
    'maxActive'                    => '20',
    'maxWait'                      => '10000',
    'initialSize'                  => '5',
    'removeAbandonedTimeout'       => '600',
    'removeAbandoned'              => false,
    'logAbandoned'                 => true,
    'minEvictableIdleTimeMillis'   => '30001',
  }

  file { '/tmp/myfile':
    ensure   => file,
    content => template('foo/mytemplate.erb'),
  }
}
