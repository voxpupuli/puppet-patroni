# frozen_string_literal: true

module PuppetX; end
module PuppetX::Patroni; end
# rubocop:enable Style/Documentation

module PuppetX::Patroni::Constants
  # There are only a handul of DCS config keys that accept array values:
  # https://patroni.readthedocs.io/en/latest/dynamic_configuration.html
  ARRAY_CONFIG_KEYS = ['ignore_slots', 'postgresql.pg_ident', 'postgresql.pg_hba'].freeze
end
