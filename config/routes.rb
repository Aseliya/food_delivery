# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :users
  resources :menus do
    collection do
      get 'sunday'
      get 'monday'
      get 'tuesday'
      get 'wednesday'
      get 'thursday'
      get 'friday'
      get 'saturday'
    end
  end
end
