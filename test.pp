include stdlib

$dirs = [
  '/tmp/data',
  '/tmp/data/APP',
  range('/tmp/data/APP/app01', '/tmp/data/APP/app10')
]

file { $dirs:
  ensure  => directory,
  mode    => '750',
}
