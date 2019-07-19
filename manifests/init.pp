class test (
  String $component_name,
  ) {
  notify { $facts['appname']:
    message => "Component name: $component_name for fact appname of ${facts['appname']}"
  }
}
