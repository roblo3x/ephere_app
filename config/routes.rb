# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'lessons#index'
  get 'landing/index'
  resources :lessons do
    collection do 
      post :save_editor_data
    end
  end
  resources :subjects
  resources :groups
  resources :users
end
