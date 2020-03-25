Rails.application.routes.draw do
  get 'landing/index'
  resources :lessons
  resources :subjects
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
