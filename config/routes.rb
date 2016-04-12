Rails.application.routes.draw do
  resources :items
  
  # match ':controller(/:action(/:id))(.:format)',via: [:get, :post]
end
