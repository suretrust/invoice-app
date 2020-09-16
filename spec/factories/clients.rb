FactoryBot.define do
  factory :client do
    name { "MyString" }
    address_one { "MyString" }
    address_two { "MyString" }
    phone_number { "MyString" }
    invoice { build(:invoice) }
  end
end
