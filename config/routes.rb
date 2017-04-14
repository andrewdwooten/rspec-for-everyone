Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :kittens, only: [:index, :destroy_all]
  post '/cats_in_a_blender', to: 'kittens#destroy_all'
end
