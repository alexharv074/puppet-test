require 'spec_helper'

describe 'hostname' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
  it { is_expected.to compile }
end
