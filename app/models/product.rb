class Product < ApplicationRecord
  belongs_to :invoice
  validates :name, :serial_number, :quantity, :price, presence: true
end
