class AddSubtotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal
    add_column :orders, :tax, :decimal
    add_column :orders, :shipping, :decimal
    add_column :orders, :total, :decimal

    add_reference :orders, :order_status, index: true
  end
end
