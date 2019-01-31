require 'spec_helper'

describe 'test' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
  let(:params) do
    {
      :repos => ['centos','ubuntu']
    }
  end
  it 'should compile' do
    is_expected.to compile
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  end
end
