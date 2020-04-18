class ProductsController < ApplicationController
  def index
  end
  def new
    @product = Product.new
    @product.product_images.new

    @category_parents = ["選択して下さい"]
    Category.where(ancestry: nil).each do |parent|
      @category_parents << parent.name
    end
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

    if @product.save!
      ship_from_location_id = ShipFromLocation.find(@product.ship_from_location_id).id
      product = Product.find(@product.id)
      product.update(ship_from_location_id: ship_from_location_id)

      product_condition_id = ProductCondition.find(@product.product_condition_id).id
      product = Product.find(@product.id)
      product.update(product_condition_id: product_condition_id)

      derivery_fee_payer_id = DeriveryFeePayer.find(@product.derivery_fee_payer_id).id
      product = Product.find(@product.id)
      product.update(derivery_fee_payer_id: derivery_fee_payer_id)

      derivery_day_id = DeriveryDay.find(@product.derivery_day_id).id
      product = Product.find(@product.id)
      product.update(derivery_day_id: derivery_day_id)

      derivery_method_id = DeriveryMethod.find(@product.derivery_method_id).id
      product = Product.find(@product.id)
      product.update(derivery_method_id: derivery_method_id)

      product_status = ProductStatus.find(@product.product_status_id).id
      product = Product.find(@product.id)
      product.update(product_status_id: product_status_id)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :ship_from_location_id, 
      :product_condition_id,:product_status_id, :derivery_fee_payer_id, :derivery_day_id, :size_id, :category_id,
      product_images_attributes: [:url]).merge(user_id: current_user.id)
  end
end
