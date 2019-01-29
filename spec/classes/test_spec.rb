require 'spec_helper' 

describe 'test' do
  it 'rspec' do
    expect(RSpec.configuration.default_facts['ipaddress']).to eq "172.16.254.254"
  end
end
