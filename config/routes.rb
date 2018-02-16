Rails.application.routes.draw do
  get 'search_index', to: 'search#index', as: 'search_index'
  get 'search_airports', to: 'search#airports', as: 'search_airports'
  get 'search_universities', to: 'search#universities', as: 'search_universities'

  root to: 'countries#index'
  get 'pages/about' => 'pages#about'

  resources :universities
  resources :crops
  resources :airports
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
