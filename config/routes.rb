Rails.application.routes.draw do
  

  get '/submissions/new', to: 'submissions#new'
  get '/submissions', to: 'submissions#index'
  post '/submissions', to: 'submissions#create'
  get '/submissions/:id', to: 'submissions#show', as: 'submission'
  get '/submissions/:id/edit', to: 'submissions#edit', as: 'edit_submission'
  patch '/submissions/:id', to: 'submissions#update'


end
