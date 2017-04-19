Rails.application.routes.draw do
  get '/', to: 'static_pages#home', as: :root

  resources :users, except: [:create, :new]
  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create', as: :create_user

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy', as: :signout

  match 'auth/:provider/callback', to: 'sessions#fb_create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  # match 'signout', to: 'sessions#destroy', as: 'logout', via: [:get, :post]
end
