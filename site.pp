hiera_include('classes')

node 'test8.home' {

include  roles::wordpress

}
