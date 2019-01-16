RSpec.configure do |c|
  c.mock_with :mocha
end

require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
#  c.formatter = :documentation
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.parser = 'future'
  c.default_facts = {
    'osfamily' => 'RedHat',
    'operatingsystem' => 'RedHat',
    'operatingsystemmajrelease' => '7',
    'ipaddress' => '10.0.0.10',
  }
end
