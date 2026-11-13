require 'spec_helper'
require 'puppet/type/patroni_dcs_config'
require 'puppet_x/patroni/constants'

describe Puppet::Type.type(:patroni_dcs_config) do
  let(:default_config) { { name: 'foo', value: 'bar' } }
  let(:config) { default_config }
  let(:resource) { described_class.new(config) }

  it 'adds to catalog without raising an error' do
    catalog = Puppet::Resource::Catalog.new
    expect {
      catalog.add_resource resource
    }.not_to raise_error
  end

  it 'requires a name' do
    expect {
      described_class.new({})
    }.to raise_error(Puppet::Error, 'Title or name must be provided')
  end

  it 'accepts integer value' do
    config[:value] = 1
    expect(resource[:value]).to eq(1)
  end

  it 'accepts array values' do
    config[:name] = 'postgresql.pg_hba'
    config[:value] = [
      'host all all 127.0.0.1/32 scram-sha-256',
      'host replication replicator 127.0.0.1/32 scram-sha-256'
    ]
    expect(resource[:value]).to contain_exactly('host all all 127.0.0.1/32 scram-sha-256', 'host replication replicator 127.0.0.1/32 scram-sha-256')
  end
end
