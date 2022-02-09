Rails.application.routes.draw do
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
    
  get '/signup',     to: 'users#new'
  
  get '/login',      to: 'sessions#new'
  post '/login',     to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  resources :users

  root 'static_pages#home'
end
