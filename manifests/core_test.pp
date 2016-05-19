class provisioning::core_test ($aws_core_instances_test) {
  create_resources(provisioning::instance, $aws_core_instances_test)
}
