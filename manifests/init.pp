class test {
  exec { 'make-git-color':
    command     => '/usr/bin/git config --global color.ui auto',
    logoutput   => 'on_failure',
    user        => 'alexharvey',
    environment => 'HOME=/Users/alexharvey',
    timeout     => 1200,
  }
}

include test
