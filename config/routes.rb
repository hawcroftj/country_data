Rails.application.routes.draw do
  root to: 'countries#index'
  resources :universities
  resources :crops
  resources :airports
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
