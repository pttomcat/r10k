class roles::wordpress::app  {
  #  $install_dir = hiera('app::install_dir')
     class  { '::wordpress':
         wp_owner    =>  'wordpress',
         wp_group    =>  'wordpress',
         db_user     =>  'wordpress1',
         #         db_name     =>  'wordpress1',
         #         db_password =>  'password',
         #      install_dir =>  $install_dir,
   }


}
