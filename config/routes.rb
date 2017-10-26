Spree::Core::Engine.add_routes do
  resources :wished_products, only: [:create, :destroy]
  get '/account/wishlist' => 'wishlists#default', as: 'default_wishlist'
end
