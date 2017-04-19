Rails.application.routes.draw do

  resources :users, except: [:create, :new]

  get '/', to: 'static_pages#home', as: :root
  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create', as: :create_user

  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  # delete '/sessions', to: 'sessions#destroy'
  delete '/sessions', to: 'sessions#destroy', as: :logout
  

  get '/submissions/new', to: 'submissions#new'
  get '/submissions', to: 'submissions#index'
  post '/submissions', to: 'submissions#create'
  get '/submissions/:id', to: 'submissions#show', as: 'submission'
  get '/submissions/:id/edit', to: 'submissions#edit', as: 'edit_submission'
  patch '/submissions/:id', to: 'submissions#update'


end
