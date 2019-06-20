Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places, only: [:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
