class test {
  $myyaml = parseyaml(file('test/myyaml.yaml'))
  notice($myyaml)
  $myjson = parsejson(file('test/myjson.json'))
  notice($myjson)
}

include test
