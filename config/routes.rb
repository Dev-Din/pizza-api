Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: [:index, :show]
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create'
end
