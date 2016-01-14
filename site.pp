hiera_include('classes')

node 'test08.home' {

include  profile::base

}
