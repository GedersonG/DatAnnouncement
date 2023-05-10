# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :auth, path: '', as: '' do
    resources :users, only: %i[new create], path: '/register', path_names: { new: '/' }
    resources :sessions, only: %i[new create destroy], path: '/login', path_names: { new: '/' }
  end

  resources :favorites, only: %i[index create destroy], param: :product_id
  resources :users, only: :show, path: '/user', param: :username
  resources :categories, except: :show
  resources :products, path: '/'
end
