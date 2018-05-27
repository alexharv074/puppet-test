class test {
file { '/tmp/dest':
  ensure             => directory,
  links              => follow,
  source             => '/tmp/symlink',
  recurse            => true,
  source_permissions => ignore,
  force              => true,
}
}

include test
