Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show do
    member do
      get 'my_books'
    end
  end
  resources :products, only: [:index, :new, :show] do
    resources :reviews, only: [:new, :edit]
  end
end

;
;
