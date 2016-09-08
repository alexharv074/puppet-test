class test {

  file { '/etc/httpd/conf.d/example.com.conf':
    content => template('test/mytemplate.erb'),
  }

}
