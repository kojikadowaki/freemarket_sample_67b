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

require 'rails_helper'

describe User do
  describe '#create' do
    it '正規のユーザが登録できる' do
      user = build(:user)
      expect(user).to be_valid
    end

    describe 'ニックネームに関するテストケース' do
      it 'ニックネームが空の場合は登録できない' do
        user = build(:user, nickname: '')
        user.valid?
        expect(user.errors[:nickname]).to include('を入力してください')
      end

      it 'ニックネームが21文字の場合は登録できない' do
        user = build(:user, nickname: 'A' * 21)
        user.valid?
        expect(user.errors[:nickname]).to include('は20文字以内で入力してください')
      end

      it 'ニックネームが20文字の場合は登録できる' do
        user = build(:user, nickname: 'A' * 20)
        expect(user).to be_valid
      end

    end

    describe 'Eメールに関するテストケース' do
      it 'Eメールが空の場合は登録できない' do
        user = build(:user, email: '')
        user.valid?
        expect(user.errors[:email]).to include('を入力してください')
      end

      it 'Eメールに@が含まれない場合は登録できない' do
        user = build(:user, email: 'foobar')
        user.valid?
        expect(user.errors[:email]).to include('は不正な値です')
      end

      it 'Eメールが重複している場合は登録できない' do
        build(:user, email: 'foobar@hogehoge.com').save
        user = build(:user, email: 'foobar@hogehoge.com')
        user.valid?
        expect(user.errors[:email]).to include('はすでに存在します')
      end
    end

    describe 'パスワードに関するテストケース' do
      it 'パスワードが6文字の場合は登録できない' do
        password = 'A' * 6
        user = build(:user, password: password, password_confirmation: password)
        user.valid?
        expect(user.errors[:password]).to include('は7文字以上で入力してください')
      end

      it 'パスワードが7文字の場合は登録できる' do
        pass = 'A' * 7
        user = build(:user, password: pass, password_confirmation: pass)
        expect(user).to be_valid
      end

      it 'パスワードと確認用パスワードが異なる場合は登録できない' do
        user = build(:user, password: 'password01')
        user.valid?
        expect(user.errors[:password_confirmation]).to include('とパスワードの入力が一致しません')
      end
    end
  end

  describe 'from_omniauthメソッド' do
    it 'SNSのnicknameとemailを返す' do
      sns = facebook_mock
      user = User.from_omniauth(sns)
      expect(user.nickname).to include(sns.info.name[0, 20])
      expect(user.email).to eq(sns.info.email)
    end

    it 'SNSのemailがnilの場合、ダミーのemailを返す' do
      sns = facebook_mock
      sns.info.email = nil
      user = User.from_omniauth(sns)
      expect(user.email).to eq("#{sns.uid}-#{sns.provider}@example.com")
    end

    it 'SNSのnicknameが20文字を超える場合、20文字までを返す（文字制限のため）' do
      sns = facebook_mock
      sns.info.name = 'A' * 21
      user = User.from_omniauth(sns)
      expect(user.nickname).to eq(sns.info.name[0, 20])
    end

    it '同じemailのユーザがすでに存在する場合、SNS認証ユーザに紐付ける' do
      sns = facebook_mock
      user = build(:user, email: sns.info.email)
      user.save
      User.from_omniauth(sns)
      expect(SnsCredential.first.user).to eq(user)
    end
  end
end

private

def facebook_mock
  OmniAuth::AuthHash.new(Faker::Omniauth.facebook)
end