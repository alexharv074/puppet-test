# vim: set paste
class test (
) {
  $data = {
    'message1' => {
      message  => 'I am message 1',
      withpath => false,
      require  => Notify['message2'],
    },
    'message2' => {
      message  => 'I am message 2',
      withpath => false,
    }
  }
  create_resources(notify, $data)
}
include test
