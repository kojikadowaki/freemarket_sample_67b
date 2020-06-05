# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  nickname               :string(255)      not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook, :twitter]
  has_one :profile,          dependent: :destroy
  has_one :shipping_address, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :orders, class_name: "Order", foreign_key: "user_id"
  has_many :products, through: :ordres
  has_many :sns_credentials, dependent: :destroy
  validates :nickname,
            presence: true,


            length: { maximum: 20 }
  def already_favorite?(product)
    self.favorites.exists?(product_id: product.id)
  end            


  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    email = auth.info.email || User.dummy_email(auth)
    user = sns.user || User.where(email: email).first_or_initialize(
       nickname: auth.info.name[0, 20],
       email:    email
    )
    if user.persisted?
      sns.user = user
      sns.save
    end
    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end

end
