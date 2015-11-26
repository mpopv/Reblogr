Rails.application.routes.draw do

  # minor quibble, but no need for extra whitespace when these are all somewhat
  # related

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, only: [:index, :show]

  resources :followings, only: [:create, :destroy]

  resources :posts

  # customarily I'd put the root route first, since it's the first thing people
  # tend to see.
  root 'posts#index'

end
