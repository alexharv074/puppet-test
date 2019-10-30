class test {
  wait_for { '/usr/bin/false':
    exit_code         => 2,
    polling_frequency => 0.3,
    max_retries       => 5,
  }
}

include test
