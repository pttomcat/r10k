class ::wordpress::apache {
 
  package { 'apache2' 
  ensure => present ;
  }
  


 include  ::apache::vhost { 'vhost.example.com':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',

  } 


}
