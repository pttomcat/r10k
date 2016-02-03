class roles::wordpress {

  include roles::wordpress::prep
  include roles::wordpress::mysql
  include roles::wordpress::apache
  include roles::wordpress::app
  include roles::ntp::init.pp

}

