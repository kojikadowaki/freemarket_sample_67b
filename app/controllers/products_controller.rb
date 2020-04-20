class ProductsController < ApplicationController
  
  
  def index
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
    @products   = Product.all.order("created_at DESC").where.not(product_status_id: 2)
    @blands     = Product.all.order("created_at DESC").where.not(bland: nil).where.not(product_status_id: 2)
  end
end

