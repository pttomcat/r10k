class roles::wordpress::mysql  {

  #  package { 'mysql':
  #  ensure   =>  peresent ;
  #}


 class  { '::mysql::server':
  root_password           =>  'strongpassword',
 remove_default_accounts  =>  true,

  }

  # ::mysql::db  { 'wordpress1':
    #  user     =>  'wordpress1',
    # password =>  'password',
    #  host     =>  'localhost',
    #  grant    =>  ['SELECT', 'UPDATE' , 'ALL'],
  
  
    #} 
}


