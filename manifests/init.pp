class test {
  $servers_list = hiera('my_list::servers')
  $filtered = $servers_list.filter |$key, $value| { $key != $::fqdn }
  $mapped   = $filtered.map |$key, $value| { "broker-${value['id']}-check" }
  $joined   = join($mapped, ',')
  notify {"******* ${joined}": }
}

include test
