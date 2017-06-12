Rails.application.routes.draw do
 root 'rpg#index' 
 post 'cave' => 'rpg#cave'
 post 'farm' => 'rpg#farm' 
 post 'cave' => 'rpg#cave'
 post 'house' => 'rpg#house'
 post 'casino' => 'rpg#casino' 
 post 'clear' => 'rpg#clear'
 post 'gimme' => 'rpg#gimme'
end
