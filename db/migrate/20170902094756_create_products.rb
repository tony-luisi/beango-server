class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.float :price
      t.integer :category

      t.timestamps
    end
  end
end
