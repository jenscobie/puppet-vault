require 'spec_helper'

describe 'vault' do
  let(:facts) { default_test_facts }

  context 'ensure => present' do
    let(:params) { { :ensure => 'present' } }

    it do
      should include_class('brewcask')

      should contain_package('vault').with({
        :ensure          => 'present',
        :provider        => 'brewcask',
        :install_options => ['--appdir=/Applications', '--binarydir=/test/boxen/bin'],
      })
    end
  end

  context 'ensure => absent' do
    let(:params) { { :ensure => 'absent' } }

    it { should contain_package('vault').with_ensure('absent') }
  end
end
