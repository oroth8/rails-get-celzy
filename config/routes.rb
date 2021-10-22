Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :courses
  resources :users, only: [:index, :edit, :show, :update]
  root 'site_pages#index'
  get 'activity', to: "site_pages#activity"
end
