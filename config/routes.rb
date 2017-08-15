Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events, only: [ :index, :show, :new, :create ]
  resources :users, only: [:show, :edit, :update]
end
