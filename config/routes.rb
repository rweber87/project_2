Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  get 'users/set_user'

  get 'users/user_params'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
