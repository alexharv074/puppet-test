class foo (
  $some_string = $::foo::params::some_string_default,
) inherits foo::params {
  validate_string($some_string)
  include foo::bar
}
