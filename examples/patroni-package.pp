# This example shows howto setup a cluster with postgresql installed
# from the destribution repositories and patroni itself from postgresql.org.

$etcd_cluster_hosts = {
  'patroni1' => 'patroni1.prefork.local',
  'patroni2' => 'patroni2.prefork.local',
  'patroni3' => 'patroni3.prefork.local',
}

$initial_cluster = $etcd_cluster_hosts.map |$name, $hostname| {
  "${name}=http://${hostname}:2380"
}

case $facts['os']['family'] {
  'redhat': {
    yumrepo { 'pgdg-common':
      descr    => "PostgreSQL common RPMs \$releasever - \$basearch",
      baseurl  => 'https://download.postgresql.org/pub/repos/yum/common/redhat/rhel-$releasever-$basearch',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'https://download.postgresql.org/pub/repos/yum/keys/PGDG-RPM-GPG-KEY-RHEL',
    }

    Yumrepo['pgdg-common'] -> Package <||>
  }

  'debian': {
    apt::keyring { 'apt.postgresql.org.asc':
      source => 'https://www.postgresql.org/media/keys/ACCC4CF8.asc',
    }
    -> apt::pin { 'pglist-patroni':
      priority => '700',
      origin   => 'apt.postgresql.org',
      packages => ['patroni'],
      order    => 60,
    }
    -> apt::source { 'pglist':
      location => 'https://apt.postgresql.org/pub/repos/apt',
      release  => "${facts['os']['distro']['codename']}-pgdg",
      repos    => 'main',
      keyring  => '/etc/apt/keyrings/apt.postgresql.org.asc',
      pin      => '-10',
    }

    Apt::Source['pglist'] -> Package <||>
  }

  default: {
    fail('This example is not runable on yout platform')
  }
}

class { 'etcd':
  config => {
    'data-dir'                    => '/var/lib/etcd',
    'name'                        => $facts['networking']['hostname'],
    'initial-advertise-peer-urls' => "http://${facts['networking']['fqdn']}:2380",
    'listen-peer-urls'            => 'http://0.0.0.0:2380',
    'listen-client-urls'          => 'http://0.0.0.0:2379',
    'advertise-client-urls'       => "http://${facts['networking']['fqdn']}:2379",
    'initial-cluster-token'       => 'etcd-cluster-1',
    'initial-cluster'             => join($initial_cluster, ','),
    'initial-cluster-state'       => 'new',
    'enable-v2'                   => true,
  },
}

class { 'patroni':
  install_method          => 'package',
  manage_postgresql_repo  => false,
  manage_postgresql       => true,
  config_path             => '/etc/patroni/patroni.yml',
  scope                   => 'cluster',
  use_etcd                => true,
  etcd_host               => $facts['networking']['fqdn'],
  etcd_protocol           => 'http',
  pgsql_connect_address   => "${facts['networking']['fqdn']}:5432",
  restapi_connect_address => "${facts['networking']['fqdn']}:8008",
  pgsql_parameters        => {
    'max_connections' => 5000,
  },
  bootstrap_pg_hba        => [
    'local all postgres ident',
    'host all all 0.0.0.0/0 scram-sha-256',
    'host replication repl 0.0.0.0/0 scram-sha-256',
  ],
  pgsql_pg_hba            => [
    'local all postgres ident',
    'host all all 0.0.0.0/0 scram-sha-256',
    'host replication repl 0.0.0.0/0 scram-sha-256',
  ],
  superuser_username      => 'postgres',
  superuser_password      => 'postgrespassword',
  replication_username    => 'repl',
  replication_password    => 'replpassword',
}
