require 'puppetlabs_spec_helper/module_spec_helper'

def verify_contents(subject, title, expected_lines)
  content = subject.resource('file', title).send(:parameters)[:content]
  expect(content.split("\n") & expected_lines).to match_array expected_lines.uniq
end

RSpec.configure do |c|
  c.formatter = :documentation
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.default_facts = {
    :ipaddress => '1.1.1.1',
    :operatingsystemrelease => '7.2',
    :operatingsystem => 'RedHat',
    :osfamily => 'RedHat',
    :fqdn => 'foo',
  }
end
