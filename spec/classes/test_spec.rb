require 'spec_helper'

describe 'profile::base::tools' do
  let(:pre_condition) {
    """
    include profile::base::yum
    """
  }

  it {
    is_expected.to contain_class('profile::base::yum').that_comes_before('Class[profile::base::tools]')
  }

  it { is_expected.to contain_package('package1') }
  it { is_expected.to contain_package('package2') }
end
