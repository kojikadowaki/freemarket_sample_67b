class ProductsController < ApplicationController
  def index
  end
  def new
    @product = Product.new
    @product.product_images.new
    @conditions = ProductCondition.all
    @payers = DeriveryFeePayer.all
    @days = DeriveryDay.all
    @locations = ShipFromLocation.all
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save!
      ship_from_location_id = ShipFromLocation.find(@product.id).id
      product = Product.find(@product.id)
      product.update(ship_from_location_id: ship_from_location_id)

      product_condition_id = ProductCondition.find(@product.id).id
      product = Product.find(@product.id)
      product.update(product_condition_id: product_condition_id)

      derivery_fee_payer_id = DeriveryFeePayer.find(@product.id).id
      product = Product.find(@product.id)
      product.update(derivery_fee_payer_id: derivery_fee_payer_id)

      derivery_day_id = DeriveryDay.find(@product.id).id
      product = Product.find(@product.id)
      product.update(derivery_day_id: derivery_day_id)

      redirect_to 
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :ship_from_location_id, 
      :product_condition_id,:derivery_fee_payer_id, :derivery_day_id,
      product_images_attributes: [:url]).merge(user_id: current_user.id)
  end
end
