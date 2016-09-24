class test (
  $foo = $test::params::foo,
  $bar = $test::params::bar,
) inherits test::params {

  contain test::configure
  notify { 'test': }
}
