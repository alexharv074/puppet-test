require 'spec_helper'
describe 'test' do
  it {
    File.write(
      'foo.json',
      PSON.pretty_generate(catalogue)
    )
  }
end
