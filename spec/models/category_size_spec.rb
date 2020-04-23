# == Schema Information
#
# Table name: category_sizes
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#  size_id     :integer          not null
#
# Indexes
#
#  index_category_sizes_on_category_id  (category_id)
#  index_category_sizes_on_size_id      (size_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (size_id => sizes.id)
#
require 'rails_helper'

RSpec.describe CategorySize, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
