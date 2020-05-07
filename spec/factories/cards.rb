# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  card_id     :string(255)
#  customer_id :string(255)
#  user_id     :integer
#
FactoryBot.define do
  factory :card do
    customer_id { "MyString" }
    card_id     { "MyString" }
    association :user, factory: :user
  end
end
