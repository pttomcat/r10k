class roles::wordpress::apache {

  class { '::apache': mpm_module => 'prefork', }
  class { '::apache::mod::php': }
  include ::stdlib
#  package { 'apache2':
#  ensure  =>  present ;
# }

  ::apache::vhost { 'wordpress.home':
  port    =>  '80',
  docroot =>  '/var/www/wordpress',
  }
}
