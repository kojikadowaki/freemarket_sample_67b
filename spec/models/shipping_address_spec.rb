# == Schema Information
#
# Table name: shipping_addresses
#
#  id                       :integer          not null, primary key
#  address_family_name      :string(255)      not null
#  address_family_name_kana :string(255)      not null
#  address_first_name       :string(255)      not null
#  address_first_name_kana  :string(255)      not null
#  address_number           :string(255)      not null
#  building_name            :string(255)
#  city                     :string(255)      not null
#  phone_number             :string(255)
#  post_code                :integer          not null
#  prefecture               :string(255)      not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :integer          not null
#
# Indexes
#
#  index_shipping_addresses_on_phone_number  (phone_number) UNIQUE
#  index_shipping_addresses_on_user_id       (user_id)
#
require 'rails_helper'

RSpec.describe ShippingAddress do
  describe '#create' do
    it '正規の送付先住所が登録できる' do
      address = build(:shipping_address)
      expect(address).to be_valid
    end

    describe '姓名に関するテストケース' do
      it '姓が空の場合は登録できない' do
        address = build(:shipping_address, address_family_name: '')
        address.valid?
        expect(address.errors[:address_family_name]).to include('を入力してください')
      end

      it '性が半角アルファベットの場合は登録できない' do
        address = build(:shipping_address, address_family_name: 'TestUser')
        address.valid?
        expect(address.errors[:address_family_name]).to include('は不正な値です')
      end

      it '名が空の場合は登録できない' do
        address = build(:shipping_address, address_first_name: '')
        address.valid?
        expect(address.errors[:address_first_name]).to include('を入力してください')
      end

      it '名が半角アルファベットの場合は登録できない' do
        address = build(:shipping_address, address_first_name: 'TestUser')
        address.valid?
        expect(address.errors[:address_first_name]).to include('は不正な値です')
      end

      it '姓(ふりがな)が空の場合は登録できない' do
        address = build(:shipping_address, address_family_name_kana: '')
        address.valid?
        expect(address.errors[:address_family_name_kana]).to include('を入力してください')
      end

      it '姓(ふりがな)が漢字の場合は登録できない' do
        address = build(:shipping_address, address_family_name_kana: '鈴木')
        address.valid?
        expect(address.errors[:address_family_name_kana]).to include('は不正な値です')
      end

      it '名(ふりがな)が空の場合は登録できない' do
        address = build(:shipping_address, address_first_name_kana: '')
        address.valid?
        expect(address.errors[:address_first_name_kana]).to include('を入力してください')
      end

      it '名(ふりがな)が漢字の場合は登録できない' do
        address = build(:shipping_address, address_first_name_kana: '太郎')
        address.valid?
        expect(address.errors[:address_first_name_kana]).to include('は不正な値です')
      end
    end

    describe '郵便番号に関するテストケース' do
      it '郵便番号が空の場合は登録できない' do
        address = build(:shipping_address, post_code: '')
        address.valid?
        expect(address.errors[:post_code]).to include('を入力してください')
      end

      it '郵便番号が6桁の場合は登録できない' do
        address = build(:shipping_address, post_code: '1' * 6)
        address.valid?
        expect(address.errors[:post_code]).to include('は1000000以上の値にしてください')
      end

      it '郵便番号が8桁の場合は登録できない' do
        address = build(:shipping_address, post_code: '1' * 8)
        address.valid?
        expect(address.errors[:post_code]).to include('は9999999以下の値にしてください')
      end

      it '郵便番号にハイフンが含まれる場合は登録できない' do
        address = build(:shipping_address, post_code: '111-1111')
        address.valid?
        expect(address.errors[:post_code]).to include('は数値で入力してください')
      end
    end

    describe '都道府県に関するテストケース' do
      it '都道府県が空の場合は登録できない' do
        address = build(:shipping_address, prefecture: '')
        address.valid?
        expect(address.errors[:prefecture]).to include('を入力してください')
      end

      it '都道府県が存在しない場合は登録できない' do
        address = build(:shipping_address, prefecture: 'ハワイ')
        address.valid?
        expect(address.errors[:prefecture]).to include('は都道府県ではありません')
      end
    end

    describe '市区町村に関するテストケース' do
      it '市区町村が空の場合は登録できない' do
        address = build(:shipping_address, city: '')
        address.valid?
        expect(address.errors[:city]).to include('を入力してください')
      end

      it '市区町村が11文字の場合は登録できない' do
        address = build(:shipping_address, city: 'あ' * 11)
        address.valid?
        expect(address.errors[:city]).to include('は10文字以内で入力してください')
      end
    end

    describe '番地に関するテストケース' do
      it '番地が空の場合は登録できない' do
        address = build(:shipping_address, address_number: '')
        address.valid?
        expect(address.errors[:address_number]).to include('を入力してください')
      end

      it '番地が21文字の場合は登録できない' do
        address = build(:shipping_address, address_number: 'あ' * 21)
        address.valid?
        expect(address.errors[:address_number]).to include('は20文字以内で入力してください')
      end
    end

    describe 'ビル名等に関するテストケース' do
      it 'ビル名等が空の場合でも登録できる' do
        address = build(:shipping_address, building_name: '')
        expect(address).to be_valid
      end

      it 'ビル名等が21文字の場合は登録できない' do
        address = build(:shipping_address, building_name: 'あ' * 21)
        address.valid?
        expect(address.errors[:building_name]).to include('は20文字以内で入力してください')
      end
    end

    describe '電話番号に関するテストケース' do
      it '電話番号が空の場合でも登録できる' do
        address = build(:shipping_address, phone_number: '')
        expect(address).to be_valid
      end

      it '電話番号が0から始まらない場合は登録できない' do
        address = build(:shipping_address, phone_number: '1234567890')
        address.valid?
        expect(address.errors[:phone_number]).to include('は不正な値です')
      end

      it '電話番号が9桁の場合は登録できない' do
        address = build(:shipping_address, phone_number: '012345678')
        address.valid?
        expect(address.errors[:phone_number]).to include('は10文字以上で入力してください')
      end

      it '電話番号が12桁の場合は登録できない' do
        address = build(:shipping_address, phone_number: '012345678901')
        address.valid?
        expect(address.errors[:phone_number]).to include('は11文字以内で入力してください')
      end

      it '電話番号にハイフン等が含まれる場合は登録できない' do
        address = build(:shipping_address, phone_number: '0123-45-6789')
        address.valid?
        expect(address.errors[:phone_number]).to include('は不正な値です')
      end

      it '電話番号が重複する場合は登録できない' do
        build(:shipping_address).save
        address = build(:shipping_address)
        address.valid?
        expect(address.errors[:phone_number]).to include('はすでに存在します')
      end
    end

    describe 'user_id(外部キー)に関するテストケース' do
      # ウィザード形式でユーザ登録をするために必要なテスト
      it 'user_idがnilの場合でも登録できる' do
        address = build(:shipping_address, user_id: nil)
        expect(address).to be_valid
      end
    end
  end
end
