class PurchaseController < ApplicationController
  
  def index #購入内容確認画面
    @card    = Card.find_by(user_id: current_user.id)
    @product = Product.find(params[:id])

    if @card.present?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer                  = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
      @card_brand               = @default_card_information.brand 
      case @card_brand
      when "Visa"
        @card_src = "card_logo_visa.png"
      when "MasterCard"
        @card_src = "card_logo_master.png"
      when "Saison"
        @card_src = "card_logo_saisonr.png"
      when "JCB"
        @card_src = "card_logo_jcb.gif"
      when "American Express"
        @card_src = "card_logo_amex.gif"
      when "Diners Club"
        @card_src = "card_logo_diners.png"
      when "Discover"
        @card_src = "card_logo_discover.jpg"
      end
    end

  end

  def pay #商品購入メソッド
    @product      = Product.find(params[:id])
    @card         = Card.find_by(user_id: current_user.id)
    Payjp.api_key = Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]

    Payjp::Charge.create(
      amount:   @product.price,
      customer: @card.customer_id,
      currency: 'jpy', 
    )
    
    if @product.save
      @product.update(status: "購入済み" )
      Order.create!(buyer_user_id: current_user.id, product_id: @product.id)

      redirect_to done_purchase_path #購入完了画面へ遷移
    end

  end

  def done #商品購入完了画面
    @categories = Category.eager_load(children: :children).where(ancestry: nil)
    @product    = Product.find(params[:id])
  end
  
end
