# vim: set paste
class test {
  include test::foo
}

class test::foo {
  $foo = hiera('foo')
  [1,2,3].each |$v| {
    if ($foo) {
      include test::bar
    }
  }
}

class test::bar {
  notify { 'foo': }
}
