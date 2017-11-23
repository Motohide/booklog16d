Rails.application.routes.draw do

  devise_for :users
  root 'products#index'

  resources :users, only: [:show, :edit, :update] do

    member do
      get 'profile'
    end
  end
  resources :products, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:edit, :update]
    collection do
      get 'search'
    end
  end
end
