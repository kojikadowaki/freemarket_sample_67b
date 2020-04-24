FactoryBot.define do
  factory :user do
    id                    {1}
    nickname              { 'テストユーザ' }
    email                 { 'foobar@hogehoge.com' }
    password              { 'password' }
    password_confirmation { 'password' }
  end
end