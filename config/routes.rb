Rails.application.routes.draw do
  devise_for :users

  root 'informations#index'

  resources :informations do
    collection do
      get :product
    end
    member do
      get :buy
      get :completion
    end
  end

  resources :users do
    member do
      get :apply
      get :history
    end
  end

end
