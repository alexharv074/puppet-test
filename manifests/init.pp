class test {
  include stdlib
  if has_key($facts['processors'], 'count') {
    notice("All OK")
  }
}

include test
