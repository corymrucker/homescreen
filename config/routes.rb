Rails.application.routes.draw do
  devise_for :users
  root "screens#index"
  resources :screens, only: [:new, :create,  :update]
end
