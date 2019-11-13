Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews'
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/edit'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/edit'
  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end

  resources :reviews, except: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
