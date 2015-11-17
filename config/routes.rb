Rails.application.routes.draw do

    root 'welcome#index'

    resources :users

    resources :posts do
      resources :comments
    end

end
