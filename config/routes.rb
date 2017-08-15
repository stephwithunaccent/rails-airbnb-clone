Rails.application.routes.draw do
  get "users/:id", to: "users#show"

  resources :users, only: [:update, :edit, :show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
