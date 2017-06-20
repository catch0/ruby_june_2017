Rails.application.routes.draw do

   root 'users#index'
   post '/users' => "sessions#create"
   get '/users/:id' => "users#edit"
   patch '/update/:id' => "users#update"
    
   get '/sessions' => "users#create"
   post '/session' => "users#create"
   delete '/sessions' => "sessions#destroy"
    
   get '/events' => "events#index"
   post '/events' => "events#create"
   post '/events/:id' => "events#show"
   get '/events/:id' => "events#show"
   delete '/events/:id' => "events#destroy"
    
   post '/guests/:id' => "guests#create"
   delete '/guests/:id' => "guests#destroy"
end
