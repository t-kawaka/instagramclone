Rails.application.routes.draw do
  devise_for :users
  resources :favorites
  resources :blogs do
    collection do
      post :confirm
      get  :person
      get  :favorite
    end
  end
  root to: "blogs#index"
end
