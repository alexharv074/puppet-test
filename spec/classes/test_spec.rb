require 'spec_helper'

describe 'test' do
  let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
  let(:facts) {{ 'appname' => 'HelloWorld' }}
  it {
    is_expected.to contain_notify("HelloWorld")
      .with({
        'message' => "Component name: MyComponentName for fact appname of HelloWorld"
      })
  }
end
