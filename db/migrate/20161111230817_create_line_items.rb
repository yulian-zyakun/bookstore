class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :price
      t.integer :book_id
      t.integer :order_id

      t.timestamps
    end
  end
end
