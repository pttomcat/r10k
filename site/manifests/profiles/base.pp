class profile::base {

  class  {'::ntp':
  servers  =>  ['0.uk.pool.ntp.org', '0.uk.pool.ntp.org'],
  }
  class  {'::ssh::server':
    permit_root_login => 'yes',
  }

}
