Rails.application.routes.draw do

  get 'sessions/new'

  root to: 'books#index'

  get 'books' => 'books#index', as: 'home'
  get 'show/:id' => 'books#show', as: 'book_show'
  get 'search' => 'books#search', as: 'book_search'
  get 'category' => 'books#category', as: 'book_category'

  get 'customers/show/:id' => 'customers#show', as: 'show_customer'
  get 'customers/new' => 'customers#new', as: 'new_customer'
  post 'customers' => 'customers#create'

  get 'about' => 'books#about', as: 'about'
  get 'contact' => 'books#contact', as: 'contact'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
