Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users

  # get 'users/', to: 'users#index'
  # post 'users/', to: 'users#create'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/edit', to: 'users#edit', as: 'edit_user'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

  resources :users, only: [:index, :show, :update, :create, :destroy]
end
