# vim: set paste
require 'spec_helper'

describe 'test' do
  it {
    is_expected.to contain_notify('test').with({
      'message' => '<% @variable %>',
    })
  }
end
