class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_time, :order_date, :status
end
