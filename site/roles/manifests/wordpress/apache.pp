class roles::wordpress::apache {

class { "::apache": }
 include ::stdlib

#  package { 'apache2':
#  ensure  =>  present ;
# }

  ::apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
