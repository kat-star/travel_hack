Rails.application.routes.draw do
  resources :comments
  resources :destinations, only: [:index, :show] do
    resources :hacks, only: [:show, :new, :create, :edit, :update, :destroy]
  end
  resources :users, only: [:show, :create, :edit, :update, :destroy] 
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
