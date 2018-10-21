require 'spec_helper'

describe 'hostname' do
  context 'empty hostname' do
    let(:params) {{ 'hostname' => '' }}
    it { is_expected.to_not compile }
  end

  context 'hostname does not satisfy naming convention' do
    let(:params) {{ 'hostname' => 'I_am_a_bad_hostname' }}
    it { is_expected.to_not compile }
  end

  context 'valid hostname' do
    let(:params) {{ 'hostname' => 'ISSLWEB001' }}
    it { is_expected.to compile }
  end
end
