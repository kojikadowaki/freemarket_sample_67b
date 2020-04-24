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
class ShippingAddress < ApplicationRecord
  belongs_to :user, optional: true

  VALID_NAME_REGEX = /\A[\p{Hiragana}\p{Katakana}\p{Han}]+\z/
  VALID_KANA_REGEX = /\A[\p{Hiragana}\p{Katakana}]+\z/
  VALID_PHONE_REGEX = /\A0\d{9,10}\z/

  validates :address_first_name, :address_family_name,
            presence: true,
            format: { with: VALID_NAME_REGEX }
  validates :address_first_name_kana, :address_family_name_kana,
            presence: true,
            format: { with: VALID_KANA_REGEX }
  validates :post_code,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 1000000,
              less_than_or_equal_to:    9999999
            }
  validates :prefecture,
            presence: true
  validate  :prefecture_cannot_be_invalid
  validates :city,
            presence: true,
            length: { maximum: 10 }
  validates :address_number,
            presence: true,
            length: { maximum: 20 }
  validates :building_name,
            length: { maximum: 20 }
  validates :phone_number,
            format: { with: VALID_PHONE_REGEX },
            length: { in: 10..11 },
            allow_blank: true,
            uniqueness: true

  private

  def prefecture_cannot_be_invalid
    pref_data = JpPrefecture::Prefecture.all.map{ |data| data.name }
    unless pref_data.include?(prefecture)
      errors.add(:prefecture, 'は都道府県ではありません')
    end
  end
end
