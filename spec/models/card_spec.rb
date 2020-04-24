# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  card_id     :string(255)      not null
#  customer_id :string(255)      not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_cards_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Card, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
