require 'spec_helper'

describe 'test' do
  before(:each) {
    MockFunction.new('is_mac_address') { |f|
      f.stubs(:call).with(['b8:e8:56:35:78:2e']).returns(true)
    }
  }

  it {
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  }
end
