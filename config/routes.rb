Spree::Core::Engine.add_routes do
  resources :wishlists, only: [:show, :default]
  resources :wished_products, only: [:create, :update, :destroy]
  get '/wishlist' => 'wishlists#default', as: 'default_wishlist'
end
