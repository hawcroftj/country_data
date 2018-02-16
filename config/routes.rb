Rails.application.routes.draw do
  get 'search', to: 'search#index', as: 'search'

  root to: 'countries#index'
  get 'pages/about' => 'pages#about'

  resources :universities
  resources :crops
  resources :airports
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
