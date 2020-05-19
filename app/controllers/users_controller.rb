class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

  def logout
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

  def selling
    @products = Product.where(user_id: params[:id])
    @products_by_status = @products.group(:status).count
    @selling_products = @products.where(status:'出品中').order("created_at DESC").page(params[:page]).per(10)
    @dealing_products = @products.where(status:'取引中').order("created_at DESC").page(params[:page]).per(10)
    @sold_products = @products.where(status:'購入済み').order("created_at DESC").page(params[:page]).per(10)
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end
  
end
