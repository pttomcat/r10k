class roles::wordpress::apache {

  package { 'apache2':
   ensure  =>  present ;
  }

  include  ::apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
