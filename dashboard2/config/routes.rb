Rails.application.routes.draw do
  #get 'welcome/index'
  root 'welcome#index'
  get '/show/:id' => 'welcome#show'
 # post 'show/:id' => 'welcome#show'
  get 'new' => 'welcome#new'
  post 'create' => 'welcome#create'
end
