FactoryBot.define do
  factory :user do
    store_name            { Faker::Name.initials(number: 2) }
    manager               { '山田 太郎'}
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end