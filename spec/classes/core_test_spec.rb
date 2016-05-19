require 'spec_helper'

describe 'provisioning::core_test' do
  let(:params) {{
    'aws_core_instances_test' => {
      'aww-c-splunk-006' => {
        'instance_type' => 't2.micro',
        'security_groups' => 'Core SSH',
        'bootstrap_template_role' => 'unset',
        'block_devices' => [
          {
            'device_name' => '/dev/sda1',
            'volume_size' => 20,
          },
          {
            'device_name' => '/dev/sdb',
            'volume_size' => 20,
          },
        ],
      },
    },
  }}
  it do
    is_expected.to compile.with_all_deps
  end
end
