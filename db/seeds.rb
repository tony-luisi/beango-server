# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderItem.delete_all
Order.delete_all
Product.delete_all

products = Product.create([
  { name: 'Flat White', price: 4.50, category: 0 , size: 0 },
  { name: 'Latte', price: 4.60, category: 0, size: 0 }
])

orders = Order.create([
  { order_date: Date.new(), order_time: Time.new(), status: 0 },
  { order_date: Date.new(), order_time: Time.new(), status: 0 }
])

orders.map.with_index { |order, i|
  OrderItem.create([
    order: order,
    product: products[i],
    name: "Tony #{i + 1}",
    notes: "#{i + 1} x Dash of Milk" 
  ])
}
