require 'spec_helper'
require 'rspec-puppet/cache'

module RSpec::Puppet
  module Support
    def self.clear_cache
      @@cache = RSpec::Puppet::Cache.new
    end
  end
end

def mock_mmf(return_value)
  RSpec::Puppet::Support.clear_cache
  Puppet::Parser::Functions.newfunction(:'my_mocked_function', type: :rvalue) do |_args|
    return return_value
  end
end

describe 'test' do
  context 'numero duo' do
    before { mock_mmf('bar') }
    it { should contain_file('under_test').with_content('bar') }
  end
  context 'numero uno' do
    before { mock_mmf('foo') }
    it { should contain_file('under_test').with_content('foo') }
  end
end
