FactoryBot.define do
  factory :invoice do
    currency { "MyString" }
    date { "2020-09-16" }
    tax { "9.99" }
    sub_total { "9.99" }
    total { "9.99" }
  end
end
