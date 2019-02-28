Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :party_animals, only: [:index, :show, :update] do
      resources :bookings, only: [:new, :create]
  end
  resources :users, only: [] do
    resources :party_animals, only: :create
  end

  resources :bookings, only: [:destroy, :show]
  resources :dashboard, only: :show

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
