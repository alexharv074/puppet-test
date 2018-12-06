class test {
  $servers_list = hiera('my_list::servers')
  $list_broker = join(
    $servers_list
      .filter |$key, $value| { $key != $::fqdn }
      .map    |$key, $value| { "broker-${value['id']}-check" },
    ','
  )
  notify {"******* ${list_broker}": }
}

include test
