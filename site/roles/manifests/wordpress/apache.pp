class roles::wordpress::apache {
  class { "::apache": }
  include ::stdlib
  class { 'apache::mod::php': } 
#  package { 'apache2':
#  ensure  =>  present ;
# }

  ::apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
