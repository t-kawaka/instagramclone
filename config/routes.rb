Rails.application.routes.draw do
  devise_for :users
  resources :blogs do
    collection do
      post :confirm
    end
  end
  root to: "blogs#index"
end
