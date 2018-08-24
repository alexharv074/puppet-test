class test () {
  $server = {
    'host' => 'foo.bar.baz',
    'public_host' => {
      'common' => {
        'host' => 'foo.bar.baz',
      },
      'internal' => {
        'host' => 'some.internal.name',
        'partition' => {
          'name' => 'int',
          'service_port' => {8443=>nil}
        }
      },
      'nonvs' => {
        'partition' => {
          'name' => 'BLA',
          'manage_virtualserver' => false,
        }
      }
    }
  }

  $public_host = $server['public_host']

  $filtered_data = $public_host.filter |$k, $v| {
    has_key($public_host[$k], 'partition') and
    has_key($public_host[$k]['partition'], 'name') and
      $public_host[$k]['partition']['name'] == 'BLA'
  }

  notice($filtered_data)
}

include test
