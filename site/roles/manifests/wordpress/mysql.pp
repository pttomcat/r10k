class ::wordpress::mysql  {

  package { 'mysql' 
  ensure  =>  installed ;
  }


 class  { '::mysql::server':
  root_password           =>  'strongpassword',
 remove_default_accounts  =>  true,

  }

  ::mysql::db  { 'wordpress':
  user     =>  'wordpress',
  password =>  'password',
  host     =>  'localhost',
  grant    =>  ['SELECT', 'UPDATE' , 'ALL'],
  
  
  } 
}


