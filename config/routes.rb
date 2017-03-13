Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :tickets do
      resources :ticket_messages
    end
  end

  get '/entrar', to: 'users#login'
  get '/registrar', to: 'users#register'
  
  get '/', to: redirect('/tickets')

  root 'home#index'

  resources :tickets do
    resources :ticket_messages
  end
end
