# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  size       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Size, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
