# @summary Matches the patroni::pqsl_authentication parameter
type Patroni::Authentication = Hash[Enum['superuser','replication','rewind'],Struct[
  {
    Optional['username']        => String[1],
    Optional['password']        => Variant[Sensitive[String], String],
    Optional['sslmode']         => Enum['disable','allow','prefer','require','verify-ca','verify-full'],
    Optional['sslkey']          => Optional[Stdlib::Absolutepath],
    Optional['sslpassword']     => Variant[Sensitive[String], String],
    Optional['sslcert']         => Optional[Stdlib::Absolutepath],
    Optional['sslrootcert']     => Optional[Stdlib::Absolutepath],
    Optional['sslcrl']          => Optional[Stdlib::Absolutepath],
    Optional['sslcrldir']       => Optional[Stdlib::Absolutepath],
    Optional['sslnegotiation']  => Enum['postgres', 'direct'],
    Optional['gssencmode']      => Enum['disable', 'prefer','require'],
    Optional['channel_binding'] => Enum['require', 'prefer', 'disable'],
  }
]]
