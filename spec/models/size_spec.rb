# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  size       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sizes_on_ancestry  (ancestry)
#
require 'rails_helper'

RSpec.describe Size, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
