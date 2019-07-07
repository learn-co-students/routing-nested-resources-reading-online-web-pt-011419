Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :authors, only: [:show]
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index] # only want show and index nested
  end

  # outside of author context
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
