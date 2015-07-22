Rails.application.routes.draw do

  get 'login/login'

  get 'login/logout'


  get '/users/recover'
  resources :users

  # defaults to dashboard
  root :to => redirect('/singleview')
  
  # view routes
  get '/singleview' => 'singleview#index'
  
  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

end
