Rails.application.routes.draw do

  devise_for :users
  root 'products#index'

  resources :users, only: [:show, :edit, :update] do
    member do
      get 'my_books'
    end
  end
  resources :products, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :edit]
    collection do
      get 'search'
    end
  end
end
