require 'puppetlabs_spec_helper/module_spec_helper'

def verify_contents(subject, title, expected_lines)
  content = subject.resource('file', title).send(:parameters)[:content]
  expect(content.split("\n") & expected_lines).to match_array expected_lines.uniq
end

RSpec.configure do |c|
  c.formatter = :documentation
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.parser = 'future'
  c.default_facts = {
    :puppetversion => '5.5.1'
  }
end
