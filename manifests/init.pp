class foo(
){
  $myservers = hiera('myservers')
  file { '/tmp/foo': 
    content => template('foo/mytemplate.erb')
  }
}
