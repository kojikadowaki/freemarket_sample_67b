class UsersController < ApplicationController
  before_action :set_products,         only: [:show, :selling, :purchasing]
  before_action :set_dealing_products, only: [:show, :selling, :purchasing]
  before_action :set_orders,           only: [:show, :purchasing]
  before_action :set_categories,       only: [:show, :logout, :selling, :purchasing]
  
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
  end

  def logout
  end

  def selling
    @selling_products = @products.where(status:'出品中').order("created_at DESC").page(params[:page]).per(10) 
    @sold_products = @products.where(status:'購入済み').order("created_at DESC").page(params[:page]).per(10)
  end

  def purchasing
  end
  

  private
  def set_products
    @products = Product.where(user_id: params[:id])
  end

  def set_dealing_products
    @dealing_products = @products.where(status:'取引中').order("created_at DESC").page(params[:page]).per(10)
  end

  def set_orders
    @orders = Order.where(user_id: current_user.id).order("created_at DESC").page(params[:page]).per(10)
  end

  def set_categories
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

end