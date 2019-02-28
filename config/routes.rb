Rails.application.routes.draw do
  get 'blogs/index'

  devise_for :users
  root to: "blogs#index"
end
