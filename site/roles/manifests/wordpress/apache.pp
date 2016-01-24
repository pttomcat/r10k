class roles::wordpress::apache {

class { "apache": }

#  package { 'apache2':
#  ensure  =>  present ;
# }

  apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
