require 'spec_helper'
describe 'foo' do
  it {
    File.write(
      'foo.json',
      PSON.pretty_generate(catalogue)
    )
  }
end
