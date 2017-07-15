class foo (
  $servers,
  $nameserver,
) {
  notify { "servers: $servers": }
  notify { "nameserver: $nameserver": }
}
