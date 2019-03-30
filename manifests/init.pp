class test {
  $resource_adapter_instances = lookup('resource_adapter_instances', {})
  $resource_adapter_paths =
    $resource_adapter_instances.map |$x| {
      [$x[1]['adapter_plan_dir'], $x[1]['adapter_plan']].join('/')
    }
    .unique
  notice($resource_adapter_paths)
}

include test
