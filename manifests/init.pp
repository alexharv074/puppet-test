class test (
  $foo = $test::params::foo,
) inherits test::params {

  file { '/etc/httpd/conf.d/example.com.conf':
    content => template('test/mytemplate.erb'),
  }

}
