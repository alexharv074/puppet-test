class test (
  Array[Hash[String, String]] $users_data = [],
) {
  $users_data.each |Hash $user| {
    $username = $user['username']
    $userkey  = $user['userkey']

    file { "/home/${username}":
      ensure => directory,
      mode   => '0750',
      owner => $username,
    }
    user { $username:
      ensure => present,
      shell => '/bin/bash',
    }
    ssh_authorized_key { $username:
      ensure => present,
      user => $username,
      type => 'ssh-rsa',
      key => $userkey,
    }
  }
}

class { 'test':
  users_data => [
    {
      'username' => 'bill',
      'userkey'  => 'keydata1',
    },
    {
      'username' => 'ted',
      'userkey'  => 'keydata2',
    },
  ]
}
