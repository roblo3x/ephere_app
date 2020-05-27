# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lessons#index'
  devise_for :users
  get 'landing/index'
  resources :lessons
  resources :subjects
  resources :groups
  resources :users
end
