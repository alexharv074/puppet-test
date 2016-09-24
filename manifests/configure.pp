class test::configure (
  $foo = $test::foo,
  $bar = $test::bar,
  $baz = $test::baz, # I don't exist
) {
  notify { 'test::configure': }
}
