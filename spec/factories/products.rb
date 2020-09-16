FactoryBot.define do
  factory :product do
    name { "MyString" }
    serial_number { 1 }
    price { "9.99" }
    quantity { 1 }
    invoice { build(:invoice) }
  end
end
