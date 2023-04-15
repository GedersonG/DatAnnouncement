Rails.application.routes.draw do
  resources :categories, except: :show
  resources :products, path: '/'

  namespace :auth, path:'', as:'' do
    resources :users, only: [:new, :create]
  end
end
