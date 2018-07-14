class test {

  $val = 'foo-bar.tct'

  $server = ['123.123.1.1','123.123.345.33','123.123.345.33']
  $restrict = ['1.1.1.1','255.255.255.224']

  file { '/tmp/bar':
    ensure  => file,
    content => template("test/mytemplate.erb"),
  }
}

include test
