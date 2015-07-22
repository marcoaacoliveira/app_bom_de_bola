Rails.application.routes.draw do

  resources :teams

  match "autenticar" => "login#login", via: [:get, :post]
  get "sair" => "login#logout"


  get '/users/recover'
  resources :users

  # defaults to dashboard
  root :to => redirect('/singleview')
  
  # view routes
  get '/singleview' => 'singleview#index'
  
  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

end
