class AddOrderRefToOrderStatus < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_statuses, :order, foreign_key: true
  end
end
