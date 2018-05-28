Rails.application.routes.draw do
  devise_for :users
  root 'informations#index'

end
