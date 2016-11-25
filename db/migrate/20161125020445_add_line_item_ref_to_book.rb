class AddLineItemRefToBook < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :line_item, foreign_key: true
  end
end
