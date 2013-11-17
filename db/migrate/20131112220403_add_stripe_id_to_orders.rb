class AddStripeIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :stripe_id, :integer
  end
end
