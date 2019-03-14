class test (Hash[String,Hash] $users) {
  $users.each |$user,$user_hash| {
    user { $user: * => $user_hash }
  }
}

#include test
