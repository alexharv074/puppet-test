exec { 'Link /tmp/a':
#  command => "
#    mv /var/cache/apt/archives /opt/apt-archives ;
#    ln -s /opt/apt-archives /var/cache/apt/archives";
  command => "mv /tmp/a /tmp/b
              ln -s /tmp/b /tmp/a
              ",
  path    => '/bin',
  unless  => 'test -L /tmp/a',
}
