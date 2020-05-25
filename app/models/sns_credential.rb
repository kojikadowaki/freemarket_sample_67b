class SnsCredential < ApplicationRecord
  belongs_to :user, optional: true

  validates :provider, presence: true
  validates :uid,      presence: true
end
