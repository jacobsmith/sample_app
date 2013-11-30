class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_transaction_amount, :integer
    add_column :orders, :organizer_credit, :integer
  end
end
