# vim: set paste
class test (
	Hash $testhash = lookup('test::hash', {'merge' => 'hash'}),
){
  $testhash.each |$key, $value| {
    user { $key :
      ensure     => $value['ensure'],
      name       => $value['name'],
      password   => $value['password'],
      groups     => $value['groups'],
      managehome => $value['managehome'],
    }
  }
}
include test
