require 'spec_helper'

describe 'foo' do
  it { is_expected.to compile }
  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
