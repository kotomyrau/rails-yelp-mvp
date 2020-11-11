Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show, :new, :index, :create] do
    #restaurants
    # a visitor cannot update/delete any restaurants or review
    resources :reviews, only: [:new, :create]
    # you only want people to be able to create/new
  end
end
