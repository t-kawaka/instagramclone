Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
      get  :person
      get  :favorite
    end
  end
  root to: "blogs#index"
end