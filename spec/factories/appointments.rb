FactoryBot.define do
  factory :appointment do
    date { '2023-03-06 10:49:54' }
    location { 'MyString' }
    user_id { 1 }
    tutor_id { 1 }
  end
end
