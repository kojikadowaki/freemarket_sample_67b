class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook, :twitter]
  has_one :profile,          dependent: :destroy
  has_one :shipping_address, dependent: :destroy
  has_many :comments
  has_many :orders, class_name: "Order", foreign_key: "user_id"
  has_many :products, through: :ordres
  has_many :sns_credentials, dependent: :destroy
  validates :nickname,
            presence: true,
            length: { maximum: 20 }

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
