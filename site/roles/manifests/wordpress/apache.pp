class roles::wordpress::apache {
  include ::apache::mod::php
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
