class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :move_to_show_without_owned_user, only: [:edit, :update]
  before_action :search

  def index
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
    @products   = Product.all.order("created_at DESC").where.not(product_status_id: 2)
    @brands     = Product.all.order("created_at DESC").where.not(brand: nil).where.not(product_status_id: 2)
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

  def exhibition_complete
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to  exhibition_complete_products_path
    else
      @product.product_images.new
      session[:img_error] = "画像を選択してください"
      session[:price_error] = "300以上9999999以下で入力してください"
      @category_parents = Category.where(ancestry: nil).pluck(:name)
      render :new
    end
  end

  def search
    if params[:q].present?
      @search = Product.ransack(params[:q])
      @products = @search.result
    else
      params[:q] = { sorts: 'id desc' }
      @search = Product.ransack()
      @products = Product.all
    end
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

  def show
    @product = Product.find(params[:id])
    @product_images = ProductImage.where("product_id = ?", params[:id] )
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
  end

  def edit
    @product = Product.find(params[:id])
    @product.product_images.each { |image| image.url.cache! }
    @product.product_images.build
    @category_parent, @category_child, @category_grandchild = @product.category.path
  end

  def update
    @product = Product.find(params[:id])
    existing_images = @product.product_images
    new_images      = params[:product][:product_images_attributes]
    remove_images   = params[:product][:remove_images]
    images_count = (
        (existing_images ? existing_images.length    : 0) +
        (new_images      ? new_images.keys.length    : 0) -
        (remove_images   ? remove_images.keys.length : 0)
    )

    if remove_images
      if (1..10).include?(images_count)
        remove_images.each { |key, _| @product.product_images[key.to_i].destroy }
        @product = Product.find(params[:id])
      else
        @product.product_images.each { |image| image.url.cache! }
        @product.product_images.build
        @category_parent, @category_child, @category_grandchild = @product.category.path
        flash.now[:img_error] = "画像を選択して下さい"
        render :edit
        return
      end
    end

    return if @product.update(product_params)

    @product.valid?
    @product.product_images.build
    @category_parent, @category_child, @category_grandchild = @product.category.path
    session[:price_error] = "300以上9999999以下で入力してください"
    render :edit
  end

  private
  def product_params
    params.require(:product).permit(
      :name, :price, :description, :ship_from_location_id, 
      :product_condition_id, :product_status_id, :derivery_fee_payer_id, :derivery_day_id, :derivery_method_id,
      :category_id, :size_id, :brand,
      product_images_attributes: [:id, :url, :url_cache]).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  def move_to_show_without_owned_user
    product = Product.find(params[:id])
    redirect_to root_path unless product.user == current_user
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end

