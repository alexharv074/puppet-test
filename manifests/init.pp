class test {
  file { '/opt/cdadmin':
    ensure => 'directory',
    mode => '0755',
    owner => 'root',
    group => 'root',
  }
  file { '/opt/cdadmin/bin':
    ensure => 'directory',
    mode => '0755',
    owner => 'root',
    group => 'root', 
  }
}
