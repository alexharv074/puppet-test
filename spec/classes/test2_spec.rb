require 'spec_helper'

describe 'test' do
  it 'is expected to contain file /tmp/foo' do
    is_expected.to contain_file('/tmp/foo').with({
      'ensure' => 'file',
    })
  end
end
