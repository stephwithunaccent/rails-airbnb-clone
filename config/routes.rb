Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events, only: [ :index, :show, :new, :create ] do
    resources :participations, only: [:new, :create]
    collection do
      get 'select', to: "events#select"
    end
  end

  resources :users, only: [:show, :edit, :update] do
    resources :participations, only: [:index, :edit, :update, :show]
  end

mount Attachinary::Engine => "/attachinary"
end
