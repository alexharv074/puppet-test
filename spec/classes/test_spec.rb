require 'spec_helper'

describe 'foo', :type => :class do
  it "content in foo should be the same as in bar" do
    foo = catalogue.resource('file', '/foo').send(:parameters)[:content]
    bar = catalogue.resource('file', '/bar').send(:parameters)[:content]
    expect(foo).to eq bar
  end

  it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
end
