Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artworks, except: :index
  resources :users
  resources :users do
    resources :artworks, only: :index
  end
  resources :artwork_shares, only: [:create, :destroy] do
    
  end


end