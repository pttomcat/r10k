class ::wordpress {


Anchor include  ::apache::vhost { 'vhost.example.com':
        port    =>  '80',
        docroot =>  '/var/www/wordpress',
  } ->


  class  { '::mysql::server':
        root_password           =>  'strongpassword',
        remove_default_accounts =>  true,
  } ->
  include  ::mysql::db  { 'wordpress':
         user     =>  'wordpress',
         password =>  'password',
         host     =>  'localhost',
         grant    =>  ['SELECT', 'UPDATE' , 'ALL'],
  } ->


 Anchor class  { '::wordpress':
         wp_owner    =>  'wordpress',
         wp_group    =>  'wordpress',
         db_user     =>  'wordpress',
         db_password =>  'password',
         install_url =>  'wordpress.home'
         install_dir =>  '/var/www/wordpress'
   }


}

