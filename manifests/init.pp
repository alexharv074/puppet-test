class test {
  notify { "IP Address fact is ${::ipaddress}": }
}

include test
