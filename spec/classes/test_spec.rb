require 'spec_helper'
 describe 'test' do
   context 'with default values for all parameters' do
    it { should contain_class('test') }
    it do
      should contain_file('/opt/cdadmin').with(
        :ensure => 'directory',
        :mode   => '0755',
        :owner  => 'root',
        :group  => 'root' )
    end
    it do
      should contain_file('/opt/cdadmin/bin').with(
        :ensure => 'directory',
        :mode   => '0755',
        :owner  => 'root',
        :group  => 'root' )
    end
  end
end
