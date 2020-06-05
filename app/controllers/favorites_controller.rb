class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(favorite_params)
    
  end

  def destroy
    @favorite = Favorite.find_by(product_id: params[:product_id],user_id: current_user.id)
    @favorite.destroy
  
  end

  private
  def favorite_params
    params.permit().merge(user_id: current_user.id, product_id: params[:product_id])
  end
end

