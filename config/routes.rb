Rails.application.routes.draw do
  devise_for :users
  resources :courses
  root 'site_pages#index'
end
