Rails.application.routes.draw do
  root 'welcome#index'
  get '/show/:id' => 'welcome#show'
  get 'new' => 'welcome#new'
  post 'create' => 'welcome#create'
  get 'edit/:id' =>'welcome#edit'
  patch 'edit/update/:id' => 'welcome#update'
  get 'delete/:id' => 'welcome#delete'
end
