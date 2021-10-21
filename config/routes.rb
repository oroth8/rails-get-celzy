Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  root 'site_pages#index'
  get 'activity', to: "site_pages#activity"
end
