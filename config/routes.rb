Rails.application.routes.draw do
  get '/', to: 'static_pages#home', as: :root

  resources :users, except: [:create, :new]
  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create', as: :create_user

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  # delete '/sessions', to: 'sessions#destroy'
  delete '/sessions', to: 'sessions#destroy', as: :logout
end
