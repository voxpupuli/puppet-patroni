# frozen_string_literal: true

require 'spec_helper'

describe 'patroni' do
  on_supported_os.each_value do |os_facts|
    plaintextfile = nil
    redactextfile = nil
    context 'can render a config with plaintext passwords' do
      let(:facts) do
        os_facts
      end
      let(:params) do
        { 'scope' => 'testscope',
          'ctl_authentication_username' => 'Username',
          'ctl_authentication_password' => 'p@ssw0rd',
          'ctl_insecure' => true,
          'initdb_extra_parameters' => { 'wal-segsize' => 16, 'no-instructions' => :undef }, }
      end

      it do
        is_expected.to compile.with_all_deps
        plaintextfile = catalogue.resource('file', 'patroni_config')[:content]
      end

      context 'can render a config with sensitive passwords' do
        let(:facts) do
          os_facts
        end
        let(:params) do
          { 'scope' => 'testscope',
            'ctl_authentication_username' => 'Username',
            'ctl_authentication_password' => RSpec::Puppet::RawString.new("Sensitive('p@ssw0rd')"),
            'ctl_insecure' => true,
            'initdb_extra_parameters' => { 'wal-segsize' => 16, 'no-instructions' => :undef }, }
        end

        it do
          is_expected.to compile.with_all_deps
          redactextfile = catalogue.resource('file', 'patroni_config')[:content]
        end
      end

      context 'sensitive and plaintext equal one another' do
        it do
          expect(plaintextfile).to eq(redactextfile)
        end
      end
    end
  end
end
