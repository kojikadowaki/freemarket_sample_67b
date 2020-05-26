# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_comments_on_product_id  (product_id)
#  index_comments_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :text, presence: true
end
