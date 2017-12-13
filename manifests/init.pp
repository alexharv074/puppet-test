# vim: set paste
class test {
  notify { 'test':
    message  => inline_template("<%% @variable %>"),
  }
}
