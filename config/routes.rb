# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  resources :lessons
  resources :subjects
  resources :groups
  resources :users

  root 'lessons#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
