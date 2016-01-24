class roles::wordpress:app  {

     class  { '::wordpress':
         wp_owner    =>  'wordpress',
         wp_group    =>  'wordpress',
         db_user     =>  'wordpress',
         db_password =>  'password',
         install_url =>  'wordpress.home',
         install_dir =>  '/var/www/wordpress',`
   }


}
