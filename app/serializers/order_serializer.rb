class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_time, :order_date, :status
  has_many :order_items
end
