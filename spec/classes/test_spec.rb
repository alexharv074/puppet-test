require 'spec_helper'

describe 'foo', :type => :class do
  context 'Darwin' do
    let(:facts) {{:operatingsystem => 'Darwin'}}
    it {
      is_expected.to contain_class('foo')
    }
    it {
      is_expected.to contain_file('/tmp/foo').with(
        {
          :ensure => 'file',
        }
      )
    }
    it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
  end

  context 'foo' do
    let(:facts) {{:operatingsystem => 'foo'}}
    it { File.write('myclass.json', PSON.pretty_generate(catalogue)) }
  end
end
