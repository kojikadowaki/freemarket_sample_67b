class FavoritesController < ApplicationController
  def create
    @like = current_user.favorites.create(product_id: params[:product_id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(product_id: params[:product_id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end
