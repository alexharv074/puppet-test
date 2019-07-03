require 'spec_helper'
require 'rspec-puppet-utils'

def mock_mmf(return_value)
  f = MockFunction.new('my_mocked_function')
  f.expected.returns(return_value)
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
