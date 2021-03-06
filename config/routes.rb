Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cocktails#home'
  resources :cocktails do
    resources :doses, only: %i[index new create]
    resources :reviews, only: [:new, :create]
    collection do
      get :healthy_cocktails
    end
  end
  resources :doses, only: %i[show edit update destroy]
  resources :ingredients
end
