class ProductsController < ApplicationController
  def index
  end
  def new
    @product = Product.new
    @product.product_images.new
    @category_parents = Category.where(ancestry: nil).pluck(:name)
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end
  
  def get_size
    grandchild_category = Category.find("#{params[:grandchild_id]}")
    if related_size = grandchild_category.sizes[0]
      @sizes = related_size.children
    end
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      @product.product_images.new
      ProductImage.new
      @category_parents = Category.where(ancestry: nil).pluck(:name)
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :ship_from_location_id, 
      :product_condition_id,:product_status_id, :derivery_fee_payer_id, :derivery_day_id, :derivery_method_id, :category_id, :size_id, :brand,
      product_images_attributes: [:url]).merge(user_id: current_user.id)
  end
end