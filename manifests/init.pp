class test (
  Hash $users,
) {
  create_resources(accounts::user, $users)
}

#include test
