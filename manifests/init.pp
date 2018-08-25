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
      },
      'foovs' => {
        'partition' => {
          'name' => 'BLA',
          'manage_virtualserver' => true,
        }
      },
    }
  }

  $public_host = $server['public_host']

  $filtered_data = $public_host.filter |$x| {
    has_key($x[1], 'partition') and has_key($x[1]['partition'], 'name') and $x[1]['partition']['name'] == 'BLA'
  }
  
  notice($filtered_data)

  $filtered = {
    'a' => {
      'd' => 1,
    },
    'b' => {
      'e' => 2,
    },
    'c' => {
      'f' => 3,
    },
  }

  notice($filtered)

  $reduced_data = $filtered.reduce({}) |$memo, $x| {
    $memo + $x[1]
  }

  notice($reduced_data)
}

include test
