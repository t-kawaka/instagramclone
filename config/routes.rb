Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  resources :profiles
  root to: "blogs#index"
end
