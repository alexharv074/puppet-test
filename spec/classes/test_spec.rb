# vim: set paste
require 'spec_helper'

describe 'test' do
  it 'is expected to raise_error' do
    is_expected.to compile.and_raise_error(/Parameter 'ensure' is already set/)
  end
end
