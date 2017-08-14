Rails.application.routes.draw do
  get "users/:id", to: "users#show"

  get 'users/new'

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'users/update'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
