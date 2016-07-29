require 'spec_helper'

describe 'test' do
  it { should compile.with_all_deps }
  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
