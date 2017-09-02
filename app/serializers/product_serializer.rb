class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :size
end
