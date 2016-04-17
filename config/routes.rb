Rails.application.routes.draw do

  root 'items#index'

  resources :items do
    get :upvote, on: :member
    get :expensive, on: :collection
  end

  match "admin/users_count" => "admin#users_count",via: [:get, :post]

  # match ':controller(/:action(/:id))(.:format)',via: [:get, :post]
end
