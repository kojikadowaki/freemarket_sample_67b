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
require 'rails_helper'

RSpec.describe Card, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Card do
  describe '#create' do
    it 'customer_id、card_idが存在すれば登録できること' do
      user = create(:user)
      card = build(:card)
      card.valid?
      expect(card).to be_valid
    end

    it 'customer_idが存在しないと登録できないこと' do
      user = create(:user)
      card = build(:card, customer_id: "")
      card.valid?
      expect(card.errors[:customer_id]).to include("を入力してください")
    end

    it 'card_idが存在しないと登録できないこと' do
      user = create(:user)
      card = build(:card, card_id: "")
      card.valid?
      expect(card.errors[:card_id]).to include("を入力してください")
    end
  end

end