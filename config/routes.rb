Rails.application.routes.draw do
  root 'places#index'
  resources :places, only: [:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
