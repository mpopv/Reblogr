Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, only: [:index, :show]

  resources :followings, only: [:create, :destroy]

  resources :posts

  root 'welcome#index'

end
