class test {
  $servers_list = lookup('my_list::servers')

  $list_broker = $servers_list
    .filter |$key, $value| { $key != $::fqdn }
    .map    |$key, $value| { "broker-${value['id']}-check" }
    .join(',')

  notify {"******* ${list_broker}": }
}

include test
