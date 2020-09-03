Rails.application.routes.draw do
  resources :profiles,  only: [:new, :create, :update]
  resources :favorites, only: [:create, :destroy]
  resources :sessions,  only: [:new, :create, :destroy]
  resources :users,     only: [:new, :create, :show]
  root "feeds#index"
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
