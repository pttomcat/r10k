class ::wordpress::mysql  {

Anchor  package { 'mysql' 
 ensure  =>  installed ;
  } ->


 class  { '::mysql::server':
  root_password           =>  'strongpassword',
 remove_default_accounts  =>  true,

  } ->

Anchore  include  ::mysql::db  { 'wordpress':
  user     =>  'wordpress',
  password =>  'password',
  host     =>  'localhost',
  grant    =>  ['SELECT', 'UPDATE' , 'ALL'],
  ]
  
  } 
}


