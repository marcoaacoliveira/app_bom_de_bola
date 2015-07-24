Rails.application.routes.draw do

  resources :players do
  member do
    match :add_card, via:[:get, :post]
  end
end

  resources :teams

  match "autenticar" => "login#login", via: [:get, :post]
  get "sair" => "login#logout"


  get '/users/recover'
  resources :users

  root :to => redirect('/teams')


end
