Rails.application.routes.draw do
  devise_for :users
  root "screens#index"
  resources :screens do
    resources :descriptions, only: :create
end
end
