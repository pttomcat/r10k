class roles::wordpress::apache {

  package { 'apache2':
   ensure  =>  present ;
  }

  class  ::apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
