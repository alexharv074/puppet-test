require 'spec_helper'

describe 'foo' do
  it { is_expected.to contain_notify('baz') }
end
