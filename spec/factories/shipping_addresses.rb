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
#  index_shipping_addresses_on_user_id  (user_id)
#
FactoryBot.define do
  factory :shipping_address do
    address_family_name      { '鈴木' }
    address_first_name       { '太郎' }
    address_family_name_kana { 'すずき' }
    address_first_name_kana  { 'たろう' }
    post_code                { '1500041' }
    prefecture               { '東京都' }
    city                     { '渋谷区' }
    address_number           { '神南１丁目１２−１６' }
    building_name            { 'アジアビル 8F' }
    phone_number             { '0311119999' }
    user_id                  { '1' }
  end
end
