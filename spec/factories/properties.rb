# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    description "MyText"
  end
end
