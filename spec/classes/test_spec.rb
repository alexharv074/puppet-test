# vim: set paste
require 'spec_helper'

describe 'test' do
  it 'should write a compiled catalog' do
    is_expected.to compile.with_all_deps
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  end

  it 'is expected to contain file /tmp/foo' do
    is_expected.to contain_file('/tmp/foo').with({
      'ensure' => 'file',
      'mode' => '0400',
      'content' => 'I am foo',
    })
  end
end
