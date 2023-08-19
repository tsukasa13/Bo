Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about", as: "about"
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update]
end
