class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
    @products   = Product.all.order("created_at DESC").where.not(product_status_id: 2)
    @blands     = Product.all.order("created_at DESC").where.not(bland: nil).where.not(product_status_id: 2)
  end
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end