SimplePortfolio::Application.routes.draw do
 
 root :to => 'pages#welcome'
 
 get "about" => 'pages#about', :as => 'about'
 
 
 
  resources :projects
  resources :contacts
  resources :blog_entries
 
 
end
