require 'spec_helper'

describe 'vault' do
  let(:facts) { default_test_facts }

  it do
    should include_class('brewcask')

    should contain_package('vault').with({
      :ensure          => 'present',
      :provider        => 'brewcask',
      :install_options => ['--appdir=/Applications', '--binarydir=/test/boxen/bin'],
    })
  end
end
