require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.default_facts = {
    :kernel                    => 'Linux',
    :osfamily                  => 'RedHat',
    :operatingsystem           => 'RedHat',
    :operatingsystemrelease    => '6.5',
    :operatingsystemmajrelease => '6',
  }
end
