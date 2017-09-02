class Order < ApplicationRecord
  enum status: [:draft, :sent, :complete]
  has_many :order_items, dependent: :destroy
end
