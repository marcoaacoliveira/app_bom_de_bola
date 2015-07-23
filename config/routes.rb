Rails.application.routes.draw do

  resources :players

  resources :teams

  match "autenticar" => "login#login", via: [:get, :post]
  get "sair" => "login#logout"


  get '/users/recover'
  resources :users

  root :to => redirect('/teams')


end
