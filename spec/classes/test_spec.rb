require 'spec_helper'

describe 'foo', :type => :class do
  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
