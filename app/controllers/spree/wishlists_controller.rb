class Spree::WishlistsController < Spree::StoreController
  helper 'spree/products'

  before_action :find_wishlist, only: [:show]
  respond_to :html

  def show
    respond_with(@wishlist)
  end

  private

  def wishlist_attributes
    params.require(:wishlist).permit(:name, :is_default, :is_private)
  end

  # Isolate this method so it can be overwritten
  def find_wishlist
    @wishlist = Spree::Wishlist.find_by_access_hash!(params[:id])
  end
end
