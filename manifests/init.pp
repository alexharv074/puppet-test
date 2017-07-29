class foo () {
  $proxy_cache_path = {
    'apples'  => 1,
    'bananas' => 2,
  }
  $proxy_cache_levels = 2
  $proxy_cache_max_size = 2
  $proxy_cache_inactive = 2

  file { '/foo':
    ensure  => file,
    content => template('foo/mytemplate.erb')
  }

  file { '/bar':
    ensure  => file,
    content => epp('foo/mytemplate.epp', {
      'proxy_cache_path'     => $proxy_cache_path,
      'proxy_cache_levels'   => $proxy_cache_levels,
      'proxy_cache_max_size' => $proxy_cache_max_size,
      'proxy_cache_inactive' => $proxy_cache_inactive,
    }),
  }
}
