class ProductsController < ApplicationController
  def index
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end
end
