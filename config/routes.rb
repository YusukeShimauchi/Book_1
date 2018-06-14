Rails.application.routes.draw do
  devise_for :users
  root 'informations#index'
  get 'informations/product' => 'informations#product'
  get 'informations/:id/buy' => 'informations#buy'
  resources :informations
end
