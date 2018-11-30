class test {
  $account = {
    'user@desktop1' => {
      'owner' => 'john',
      'type'  => 'ssh-rsa',
      'public' => 'SomePublicKey',
    },
    'user@desktop2' => {
      'owner' => 'mary',
      'type'  => 'ssh-rsa',
      'public' => 'SomePublicKey',
    },
    'user@desktop3' => {
      'owner' => 'john',
      'type'  => 'ssh-rsa',
      'public' => 'SomePublicKey',
    },
    'user@desktop4' => {
      'owner' => 'matt',
      'type'  => 'ssh-rsa',
      'public' => 'SomePublicKey',
    }
  }

  notice($account.filter |$k, $v| { $v['owner'] == 'john' }.keys)
}

include test
