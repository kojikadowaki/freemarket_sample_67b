# == Schema Information
#
# Table name: profiles
#
#  id               :integer          not null, primary key
#  avatar           :string(255)
#  birth_day        :integer          not null
#  birth_month      :integer          not null
#  birth_year       :integer          not null
#  family_name      :string(255)      not null
#  family_name_kana :string(255)      not null
#  first_name       :string(255)      not null
#  first_name_kana  :string(255)      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
FactoryBot.define do
  factory :profile do
    family_name      { '鈴木' }
    first_name       { '太郎' }
    family_name_kana { 'すずき' }
    first_name_kana  { 'たろう' }
    birth_year       { '1990' }
    birth_month      { '12' }
    birth_day        { '31' }
    avatar           { 'images/hogehoge' }
    user_id          { '1' }
  end
end
