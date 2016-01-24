hiera_include('classes')

node 'test08.home' {

include  role::wordpress

}
