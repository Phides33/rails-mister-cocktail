Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:index, :show, :new, :create]
  end

  resources :doses, only: [:edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
