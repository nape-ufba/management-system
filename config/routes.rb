Rails.application.routes.draw do
  get 'sessions/new'

  namespace :admin do
    resources :users
    resources :tickets do
      resources :ticket_messages
    end
  end

  get '/entrar', to: 'sessions#new'
  get '/registrar', to: 'users#new'
  get '/logout', to: 'sessions#destroy'
  
  get '/', to: redirect('/tickets')

  resources :sessions, :only => [:new, :create]
  resources :users, :only => [:new, :create]

  root 'home#index'

  resources :tickets do
    resources :ticket_messages
  end
end
