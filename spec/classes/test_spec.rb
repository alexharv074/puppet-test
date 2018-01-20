# vim: set paste
require 'spec_helper'
require 'rspec-puppet-utils'

describe 'test::foo' do
  context 'bar' do
    before(:each) do
      MockFunction.new('hiera') do |f|
        f.stubbed.with('foo').returns(false)
      end
    end

    it do
      is_expected.to_not contain_class('Test::Bar')
    end
  end

  context 'baz' do
    before(:each) do
      MockFunction.new('hiera') do |f|
        f.expected.with('foo').returns(true)
      end
    end

    it do
      is_expected.to contain_class('Test::Bar')
    end
  end
end
