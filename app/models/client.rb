class Client < ApplicationRecord
  belongs_to :invoice
  validates :name, :address_one, :address_two, :phone_number, presence: true
end
