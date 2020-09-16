class Invoice < ApplicationRecord
  has_many :products
  has_one :client
  has_one :issuer
  validates :date, :tax, :sub_total, :total, presence: true
end
