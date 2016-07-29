class test {

  $val = 600
  $val.each |Integer $index| {
    etc_services { "my_srv$index/tcp" :
      port => "25$index",
    }
  }

}
