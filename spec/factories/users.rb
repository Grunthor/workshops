# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
    f.firstname 'John'
    f.lastname 'Doe'
    f.email { Faker::Internet.email }
    f.password 'password123'
  end
end
