Rails.application.routes.draw do

  resources :users, except: [:create, :new]
  resources :submissions

  get '/', to: 'static_pages#home', as: :root
  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create', as: :create_user

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy', as: :signout

  # match 'auth/:provider/callback', to: 'sessions#fb_create', via: [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]

  # delete '/sessions', to: 'sessions#destroy', as: :logout


  # get '/submissions/new', to: 'submissions#new'
  # get '/submissions', to: 'submissions#index'
  # post '/submissions', to: 'submissions#create'
  # delete '/submissions', to: 'submissions#destroy'
  # get '/submissions/:id', to: 'submissions#show', as: 'submission'
  # get '/submissions/:id/edit', to: 'submissions#edit', as: 'edit_submission'
  # patch '/submissions/:id', to: 'submissions#update'
end
