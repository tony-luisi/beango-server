class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :order_id, :product_id
  belongs_to :order
end
