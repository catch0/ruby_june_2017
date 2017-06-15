Rails.application.routes.draw do
    root 'users#new'
    post '/users' => "users#create"
    get '/success' => "users#success"
    post '/sessions' => "sessions#create"
    
end
