# == Schema Information
#
# Table name: products
#
#  id                    :integer          not null, primary key
#  brand                 :string(255)
#  description           :text(65535)      not null
#  name                  :string(255)      not null
#  price                 :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  category_id           :integer
#  derivery_day_id       :integer
#  derivery_fee_payer_id :integer
#  derivery_method_id    :integer          not null
#  product_condition_id  :integer
#  product_status_id     :integer          not null
#  ship_from_location_id :integer
#  size_id               :integer          not null
#  user_id               :integer
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_size_id      (size_id)
#  index_products_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (size_id => sizes.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


describe Product do
  describe '商品出品時のテストケース' do
    it '必須項目に値があれば出品できる' do
      product = build(:product)
      expect(product).to be_valid
    end

    describe '商品情報に関するテストケース' do
      it '商品名が空の場合は出品できない' do
        product = build(:product, name: "")
        product.valid?
        expect(product.errors[:name]).to include('を入力してください')
      end

      it '商品説明文が空の場合は出品できない' do
        product = build(:product, description: "")
        product.valid?
        expect(product.errors[:description]).to include('を入力してください')
      end

      it '商品状態が未選択の場合は出品できない' do
        product = build(:product, product_condition_id: "")
        product.valid?
        expect(product.errors[:product_condition_id]).to include('を入力してください')
      end

      it 'カテゴリーが未選択の場合は出品できない' do
        product = build(:product, category_id: "")
        product.valid?
        expect(product.errors[:category]).to include('を入力してください')
      end

      it 'ブランドが空の場合でも出品できる' do
        product = build(:product, brand: "")
        expect(product).to be_valid
      end

      it 'サイズが空の場合でも出品できる' do
        product = build(:product, size_id: "")
        expect(product).to be_valid
      end

      describe '価格に関するテストケース' do
        it '価格が空の場合は出品できない' do
          product = build(:product, price: "")
          product.valid?
          expect(product.errors[:price]).to include('を入力してください', 'は数値で入力してください')
        end

        it '価格が300円以上でなければ出品できない' do
          product = build(:product, price: "200")
          product.valid?
          expect(product.errors[:price]).to include("は300以上の値にしてください")
        end
    
        it '価格が300円以上であれば出品できる' do
          product = build(:product, price: "300")
          expect(product).to be_valid
        end
    
        it '価格が9999999円以上であれば出品できない' do
          product = build(:product, price: "10000000")
          product.valid?
          expect(product.errors[:price]).to include("は9999999より小さい値にしてください")
        end
    
        it '価格が9999999円以下であれば出品できる' do
          product = build(:product, price: "9999998")
          expect(product).to be_valid
        end
      end
    end

    describe '配送に関するテストケース' do
      it '配達日時が未選択の場合は出品できない' do
        product = build(:product, derivery_day_id: "")
        product.valid?
        expect(product.errors[:derivery_day_id]).to include('を入力してください')
      end

      it '配送料の負担がが未選択の場合は出品できない' do
        product = build(:product, derivery_fee_payer_id: "")
        product.valid?
        expect(product.errors[:derivery_fee_payer_id]).to include('を入力してください')
      end

      it '配達方法が未選択の場合は出品できない' do
        product = build(:product, derivery_method_id: "")
        product.valid?
        expect(product.errors[:derivery_method_id]).to include('を入力してください')
      end

      it '配送元の地域が未選択の場合は出品できない' do
        product = build(:product, ship_from_location_id: "")
        product.valid?
        expect(product.errors[:ship_from_location_id]).to include('を入力してください')
      end
    end
  end
end

