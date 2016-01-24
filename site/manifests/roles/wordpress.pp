class ::wordpress {

Anchor  include ::wordpress::prep    ->
        include ::wordpress::mysql   ->
        include ::wordpress::apache  ->
Anchor  include ::wordpress::app

}

