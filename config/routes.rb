Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/create'
  get 'comments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artworks, except: :index
  
  resources :users

  resources :users do
    resources :artworks, only: :index
    resources :comments, only: :index 
  end
  resources :artworks do 
    resources :comments, only: :index
  end

  resources :comments, only: [:create, :destroy] do
  
  end

  resources :artwork_shares, only: [:create, :destroy] do
    
  end


end