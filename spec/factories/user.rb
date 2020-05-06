FactoryBot.define do
  factory :user do
    # id                    {1}
    nickname              { 'テストユーザ' }
    email                 {Faker::Internet.email}
    password              { 'password' }
    password_confirmation { 'password' }
  end
end