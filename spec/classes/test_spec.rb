# vim: set paste
require 'spec_helper'

describe 'test::foo' do
  it {
    is_expected.to contain_notify('foo')
  }
  it {
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  }
end
