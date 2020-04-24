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
RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

end

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

      it 'ニックネームが11文字の場合は登録できない' do
        user = build(:user, nickname: 'A' * 11)
        user.valid?
        expect(user.errors[:nickname]).to include('は10文字以内で入力してください')
      end

      it 'ニックネームが10文字の場合は登録できる' do
        user = build(:user, nickname: 'A' * 10)
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
        build(:user).save
        user = build(:user)
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
end


