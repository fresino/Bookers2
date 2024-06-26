Rails.application.routes.draw do

  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"
  devise_for :users

  resources :books, only: [:new, :create, :index ,:show, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update, :index]
end
