require 'spec_helper'

describe 'test' do
  it {
    is_expected.to contain_file('/etc/resolv.conf').with(
      'ensure'  => 'present',
      'mode'    => '0640',
      'group'   => 'root',
      'owner'   => 'root',
      'content' => "search server.com\n",
    )
  }
it {
  verify_contents(catalogue, '/etc/resolv.conf', ['search server.com'])
}
end
