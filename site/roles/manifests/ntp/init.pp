class ntp (
      $config            = $ntp::params::config,
      $config_template   = $ntp::params::config_template,
      $servers           = $ntp::params::servers,
    ) inherits ntp::params {
  validate_absolute_path($config)
  validate_string($config_template)
  validate_array($servers)

  anchor { 'ntp::begin': } ->
  package { 'ntp': ensure => installed } ->
  file { $ntp::config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($config_template),
  } ~>
  service {'ntp': ensure => running } ->
  anchor { 'ntp::end': }

}
