class foo::hello_world1 {
  file { "/tmp/hello_world1":
    content => "Hello, world!\n"
  }
}
