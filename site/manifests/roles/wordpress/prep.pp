class ::wordpress::prep {
  
 file { '/var/www/wordpress':
    ensure => 'directory',
    owner  => 'wordpress',
    group  => 'wordpress',
    mode   => '0750',
  }

#create user
  group { 'wordpress':
    ensure => present,
  }
  user { 'wordpress':
    ensure   => present,
    gid      => 'wordpress',
    password => 'password'",
    home     => '/var/www/wordpress',
  }


  class { 'mysql::bindings':
    php_enable => true,
  }
}
