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
require 'date'

class Profile < ApplicationRecord
  belongs_to :user, optional: true

  VALID_NAME_REGEX = /[\p{Hiragana}\p{Katakana}\p{Han}]+/
  VALID_KANA_REGEX = /[\p{Hiragana}\p{Katakana}]+/

  validates :first_name, :family_name,
            presence: true,
            format: { with: VALID_NAME_REGEX }
  validates :first_name_kana, :family_name_kana,
            presence: true,
            format: { with: VALID_KANA_REGEX }
  validates :birth_year, :birth_month, :birth_day,
            presence: true
  validate  :birth_date_cannot_be_in_the_future,
            unless: :birth_date_cannot_be_valid_date

  private

  def birth_date_cannot_be_valid_date
    return true unless birth_year && birth_month && birth_day
    unless Date.valid_date?(birth_year, birth_month, birth_day)
      errors.add(:birth_date, 'は不正な値です')
    end
  end

  def birth_date_cannot_be_in_the_future
    if Date.today < Date.new(birth_year, birth_month, birth_day)
      errors.add(:birth_date, 'が未来日です')
    end
  end
end
