class foo (
) {
  include stdlib
  $hash = loadjson('/tmp/file.json')
  [$message, $return_value] = $hash['output']
  notice("$message, $return_value")
}
