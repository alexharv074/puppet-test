# vim: set paste
class test {
  $foo = hiera('foo')
  notify { $foo: }
}
