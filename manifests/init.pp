class foo () {
  $filter = {
    'filtertype' => 'foo',
    'apples'     => 1,
    'bananas'    => 2,
  }

  file { '/foo':
    ensure  => file,
    content => template('foo/mytemplate.erb'),
  }

  file { '/bar':
    ensure  => file,
    content => epp('foo/mytemplate.epp', {'filter' => $filter}),
  }
}
