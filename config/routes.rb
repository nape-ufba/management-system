Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  get '/entrar', to: 'users#login'
  get '/registrar', to: 'users#register'
  
  root 'home#index'
end
