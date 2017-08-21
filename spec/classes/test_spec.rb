require 'spec_helper'

describe 'foo::hello_world1' do
  it { is_expected.to compile }
  it { is_expected.to contain_file('/tmp/hello_world1')\
    .with_content(/^Hello, world!$/) }

  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end

describe 'foo::hello_world2' do
  it { is_expected.to compile }

  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
