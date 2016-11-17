Rails.application.routes.draw do
  root to: 'books#index'
  get 'books' => 'books#index', as: 'home'
  get 'show/:id' => 'books#show', as: 'book_show'
  get 'search' => 'books#search', as: 'book_search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
