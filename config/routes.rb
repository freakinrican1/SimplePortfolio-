SimplePortfolio::Application.routes.draw do
 
 root :to => 'pages#welcome'
 
 get "logout" => 'logins#destroy', :as => "logout"
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  
   get "signup" => 'users#new', :as => "signup"
   post "create_user" => 'users#create', :as => "create_user"
  
 get "about" => 'pages#about', :as => 'about'
 
 get "contact_me" =>'pages#contact_me', :as => 'contact_me'
 
 
  resources :projects
  resources :contacts
  resources :blog_entries
 
 
end
