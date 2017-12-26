# vim: set paste
class test {
  $es_hosts = ['foo.example.com', 'bar.example.com']
  file { '/tmp/foo':
    content => template('test/mytemplate.erb')
  }
}
include test
