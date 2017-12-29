# vim: set paste
require 'spec_helper'
require 'rspec-puppet-utils'

describe 'test' do
  context 'bar' do
    before(:each) do
      MockFunction.new('hiera') do |f|
        f.expected.with('foo').returns('bar')
      end
    end

    it do
      is_expected.to contain_notify('bar')
    end
  end

  context 'baz' do
    before(:each) do
      MockFunction.new('hiera') do |f|
        f.expected.with('foo').returns('baz')
      end
    end

    it do
      is_expected.to contain_notify('baz')
    end
  end
end
