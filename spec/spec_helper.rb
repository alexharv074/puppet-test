RSpec.configure do |c|
  c.mock_with :mocha
end

require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
#  c.formatter = :documentation
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.parser = 'future'
  c.default_facts = {
    'osfamily' => 'Debian',
    'operatingsystem' => 'Ubuntu',
    'os' => {
      'name' => 'Ubuntu',
      'release' => {
        'full' => '16.04',
      },
    },
    'lsbdistcodename' => 'mycode',
    'lsbdistrelease' => '16.04',
  }
end
