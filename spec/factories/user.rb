FactoryBot.define do
  factory :user do
    nickname              { 'テストユーザ' }
    email                 { 'foobar@hogehoge.com' }
    password              { 'password' }
    password_confirmation { 'password' }
  end
end