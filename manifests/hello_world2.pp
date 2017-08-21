class foo::hello_world2
{
  concat{ "/tmp/hello_world2":
    ensure => present,
  }
  concat::fragment{ "/tmp/hello_world2_01":
    target  => "/tmp/hello_world2",
    content => "Hello, world!\n",
    order   => '01',
  }
}
