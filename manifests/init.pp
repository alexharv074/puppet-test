class test {
  $myval = alex('world')
  notify { "alex() returned $myval": }

  $myusers = {
    'nick' => { uid => '1330' },
    'dan'  => { uid => '1308' },
  }
  $defaults = {
    'ensure' => present,
  }
  create_resources(user, $myusers, $defaults)
}
