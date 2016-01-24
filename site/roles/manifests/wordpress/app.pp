class roles::wordpress::app  {

     class  { '::wordpress':
         wp_owner    =>  'wordpress',
         wp_group    =>  'wordpress',
         db_user     =>  'wordpress1',
         #         db_name     =>  'wordpress1',
         #         db_password =>  'password',
         install_dir =>  '/var/www/wordpress',
   }


}
