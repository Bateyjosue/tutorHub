FactoryBot.define do
  factory :tutor do
    name { 'MyString' }
    image { 'MyString' }
    description { 'MyString' }
    price { '9.99' }
    city { 'MyString' }
    user { nil }
  end
end
