require 'spec_helper'

describe 'test' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
  it 'should compile' do
    is_expected.to compile
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  end
end
