class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.time :order_time
      t.date :order_date
      t.integer :status

      t.timestamps
    end
  end
end
