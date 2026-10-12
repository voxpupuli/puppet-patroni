require 'puppet_x/patroni/constants'

Puppet::Type.newtype(:patroni_dcs_config) do
  desc <<-DESC
@summary Manages Patroni DCS configuration options
@example Set PostgreSQL max connections
  patroni_dcs_config { 'postgresql.params.max_connections':
    value => '200',
  }

@example Set PostgreSQL HBA entries
  patroni_dcs_config { 'postgresql.pg_hba':
    value => [
      'host all all 127.0.0.1/32 scram-sha-256',
      'host replication replicator 127.0.0.1/32 scram-sha-256',
    ]
  }
DESC

  newparam(:name, namevar: true) do
    desc 'The DCS configuration option name'
  end

  newproperty(:value, array_matching: :all) do
    desc 'The value to assign the DCS configuration'

    def should
      return super.sort if PuppetX::Patroni::Constants::ARRAY_CONFIG_KEYS.include?(@resource[:name])

      # Puppet always returns an array
      super[0]
    end

    def insync?(is)
      # Return early if needed to avoid insync failures
      return if is == :absent

      return Array(is).sort == should if PuppetX::Patroni::Constants::ARRAY_CONFIG_KEYS.include?(@resource[:name])

      is.to_s == should.to_s
    end
  end

  autorequire(:service) do
    ['patroni']
  end
end
