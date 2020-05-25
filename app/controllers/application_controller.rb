class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
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

  private

  def production?
    Rails.env.production?
  end
  
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
