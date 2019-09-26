class test {
  $notify_resources = lookup('notify_resources')
  $notify_resources.each |$k,$v| {
    notify { $k: * => $v }
  }
}
