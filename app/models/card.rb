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
class Card < ApplicationRecord
  belongs_to :user

  validates :customer_id, :card_id, presence: true
end