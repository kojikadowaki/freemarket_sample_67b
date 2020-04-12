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
require 'rails_helper'
require 'date'

describe Profile do
  describe '#create' do
    it '正規のプロフィールが登録できる' do
      profile = build(:profile)
      expect(profile).to be_valid
    end

    describe '姓名に関するテストケース' do
      it '性が空の場合は登録できない' do
        profile = build(:profile, family_name: '')
        profile.valid?
        expect(profile.errors[:family_name]).to include('を入力してください')
      end

      it '性が半角アルファベットの場合は登録できない' do
        profile = build(:profile, family_name: 'TestUser')
        profile.valid?
        expect(profile.errors[:family_name]).to include('は不正な値です')
      end

      it '名が空の場合は登録できない' do
        profile = build(:profile, first_name: '')
        profile.valid?
        expect(profile.errors[:first_name]).to include('を入力してください')
      end

      it '名が半角アルファベットの場合は登録できない' do
        profile = build(:profile, first_name: 'TestUser')
        profile.valid?
        expect(profile.errors[:first_name]).to include('は不正な値です')
      end

      it '性(ふりがな)が空の場合は登録できない' do
        profile = build(:profile, family_name_kana: '')
        profile.valid?
        expect(profile.errors[:family_name_kana]).to include('を入力してください')
      end

      it '性(ふりがな)が漢字の場合は登録できない' do
        profile = build(:profile, family_name_kana: '鈴木')
        profile.valid?
        expect(profile.errors[:family_name_kana]).to include('は不正な値です')
      end

      it '名(ふりがな)が空の場合は登録できない' do
        profile = build(:profile, first_name_kana: '')
        profile.valid?
        expect(profile.errors[:first_name_kana]).to include('を入力してください')
      end

      it '名(ふりがな)が漢字の場合は登録できない' do
        profile = build(:profile, first_name_kana: '太郎')
        profile.valid?
        expect(profile.errors[:first_name_kana]).to include('は不正な値です')
      end
    end

    describe '誕生年月日に関するテストケース' do
      it '誕生年が空の場合は登録できない' do
        profile = build(:profile, birth_year: '')
        profile.valid?
        expect(profile.errors[:birth_year]).to include('を入力してください')
      end

      it '誕生月が空の場合は登録できない' do
        profile = build(:profile, birth_month: '')
        profile.valid?
        expect(profile.errors[:birth_month]).to include('を入力してください')
      end

      it '誕生日が空の場合は登録できない' do
        profile = build(:profile, birth_day: '')
        profile.valid?
        expect(profile.errors[:birth_day]).to include('を入力してください')
      end

      it '誕生年月日が存在しない場合は登録できない' do
        profile = build(:profile, birth_day: 0)
        profile.valid?
        expect(profile.errors[:birth_date]).to include('は不正な値です')
      end

      it '誕生年月日が未来日の場合は登録できない' do
        date = Date.today + 1
        profile = build(:profile, birth_year: date.year, birth_month: date.month, birth_day: date.day)
        profile.valid?
        expect(profile.errors[:birth_date]).to include('が未来日です')
      end
    end

    describe 'アバターに関するテストケース' do
      it 'アバターが空の場合でも登録できる' do
        profile = build(:profile, avatar: '')
        expect(profile).to be_valid
      end
    end

    describe 'user_id(外部キー)に関するテストケース' do
      # ウィザード形式でユーザ登録をするために必要なテスト
      it 'user_idがnilの場合でも登録できる' do
        profile = build(:profile, user_id: nil)
        expect(profile).to be_valid
      end
    end
  end
end
