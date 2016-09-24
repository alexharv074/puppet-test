require 'spec_helper'

describe 'test' do

  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
