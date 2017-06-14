class foo(
){
  file {'chmod_script':
    path => "/data/files/inner_folder/script",
    ensure => 'present',
    mode => "+x"
  }
}
