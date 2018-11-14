class b () {
  notify { 'Z':
    require => Notify['X'],
  }
}

class a () {
  notify { 'X': }
  exec { 'Y':
    command     => '/bin/echo Y',
    refreshonly => true,
    subscribe   => Notify['X'],
  }
}

include a
include b
