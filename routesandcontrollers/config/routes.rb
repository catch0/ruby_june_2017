Rails.application.routes.draw do
  root 'welcome#index'  
  get 'hello' => "welcome#hello"
  get 'say/hello' => "welcome#sayhello"
  get 'times' => "welcome#times"
  get 'times/restart' => "welcome#timesrestart" 
  get 'say/hello/(:name)' => "welcome#sayhello"
  
end
