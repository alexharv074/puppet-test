# vim: set paste
require 'spec_helper'

describe 'a::b' do
  it 'overrides ensure attribute' do
    is_expected.to contain_file('/tmp/foo').with({
      'ensure'  => 'file',
    })
  end
  it 'inherits content from $x' do
    is_expected.to contain_file('/tmp/foo').with({
      'content' => "I, Foo",
    })
  end
  it 'file defaults inherited' do
    is_expected.to contain_file('/tmp/bar').with({
      'mode' => '0755',
    })
  end
end
