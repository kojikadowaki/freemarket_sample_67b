class UsersController < ApplicationController
  before_action :set_categories, only: [:show, :logout, :selling, :purchasing]
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
  end

  def logout
  end

  def selling
    @products = Product.where(user_id: params[:id])
    @products_by_status = @products.group(:status).count
    @selling_products = @products.where(status:'出品中').order("created_at DESC").page(params[:page]).per(10)
    @dealing_products = @products.where(status:'取引中').order("created_at DESC").page(params[:page]).per(10) 
    @sold_products = @products.where(status:'購入済み').order("created_at DESC").page(params[:page]).per(10)
  end

  def purchasing
    @products = Product.where(user_id: params[:id])
    @products_by_status = @products.group(:status).count
    @dealing_products = @products.where(status:'取引中').order("created_at DESC").page(params[:page]).per(10)
    @orders = Order.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(10)
  end
  
  private
  def set_categories
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

end
