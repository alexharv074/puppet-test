class test {
  #$result = 'foo'
  $result = my_mocked_function('foo')
  file { 'under_test':
    content => $result,
  }
}
