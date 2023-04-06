Rails.application.routes.draw do
  get '/products/new', to: 'products#new', as: :new_product
  post '/products', to: 'products#create'
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show_product', as: :product
  get '/products/:id/edit', to: 'products#edit_product', as: :edit_product
end
