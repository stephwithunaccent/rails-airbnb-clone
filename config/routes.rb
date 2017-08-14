Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/destroy'

  get 'users/edit'

  get 'users/update'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
