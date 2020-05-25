# == Schema Information
#
# Table name: sns_credentials
#
#  id         :integer          not null, primary key
#  provider   :string(255)      not null
#  uid        :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_sns_credentials_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

describe SnsCredential do
  describe 'create#' do
    it 'SNS情報が登録できる' do
      sns = build(:sns_credential)
      expect(sns).to be_valid
    end

    it 'providerが空の場合は登録できない' do
      sns = build(:sns_credential, provider: '')
      sns.valid?
      expect(sns.errors[:provider]).to include('を入力してください')
    end

    it 'uidが空の場合は登録できない' do
      sns = build(:sns_credential, uid: '')
      sns.valid?
      expect(sns.errors[:uid]).to include('を入力してください')
    end
  end
end
