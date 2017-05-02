require 'spec_helper'

describe 'foo' do
  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
