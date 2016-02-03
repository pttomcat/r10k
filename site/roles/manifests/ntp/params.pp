class ntp::params {

      $config           =  '/etc/ntp.conf'
      $config_template   = 'ntp/ntp.conf.erb',
      $servers           = [
        '0.debian.pool.ntp.org',
        '1.debian.pool.ntp.org',
        '2.debian.pool.ntp.org',
        '3.debian.pool.ntp.org',
      ]
}

