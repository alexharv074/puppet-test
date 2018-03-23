class test {
  $my_variable = 'foo'
  file { '/tmp/foo':
    ensure  => file,
    content => template('test/mytemplate.erb')
  }
}
