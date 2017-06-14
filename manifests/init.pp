class foo {
  @user { 'foo': ensure => present }
}
class bar {
  include foo
  User <||>
}
class baz {
  include foo
  User <||>
}

include bar
include baz
