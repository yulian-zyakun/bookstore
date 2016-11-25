class AddLineItemRefToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :line_item, foreign_key: true
  end
end
