# vim: set paste
require 'spec_helper'

describe 'test' do
  it 'is expected to contain notify IP Address fact is ' do
    is_expected.to contain_notify('IP Address fact is ')
  end

  it 'should write a compiled catalog' do
    is_expected.to compile.with_all_deps
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  end
end
