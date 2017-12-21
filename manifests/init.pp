# vim: set paste
class test {
  notify { 'test':
    message  => 'test',
  }
}

class test::foo {
  notify { 'foo':
    message  => 'foo',
  }
}
