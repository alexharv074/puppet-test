require 'spec_helper'

describe 'test' do
  it 'is expected to contain file /tmp/bar' do
    is_expected.to contain_file('/tmp/bar').with({
      'ensure' => 'file',
    })
  end
end
