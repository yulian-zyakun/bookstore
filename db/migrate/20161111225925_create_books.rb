class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
