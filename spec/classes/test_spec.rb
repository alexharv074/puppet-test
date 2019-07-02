require 'spec_helper'

describe 'facter' do
  it 'write catalog' do
    File.write('foo.json', PSON.pretty_generate(catalogue))
  end
end
