Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:new, :create, :show, :edit, :update] do
    resources :bookings, only: [:new, :create, :destroy]
  end

  resources :party_animals, only: [:index, :show, :update]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
