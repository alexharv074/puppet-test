# vim: set paste
require 'spec_helper'

describe 'test' do
  it 'should write a compiled catalog' do
    is_expected.to compile.with_all_deps
    File.write(
      'myclass.json',
      PSON.pretty_generate(catalogue)
    )
  end

  it 'should have a comma separated list of values' do
    is_expected.to contain_ini_setting('/home/splunk/etc/SplunkEnterpriseSecuritySuite/local/authorize.conf').with({
      'value' => 'pci_admin,ess_admin',
    })
  end
end
