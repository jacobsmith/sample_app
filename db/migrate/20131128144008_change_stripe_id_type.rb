class ChangeStripeIdType < ActiveRecord::Migration
  def up
    change_column :orders, :stripe_id, :string
  end

  def down
    change_column :orders, :stripe_id, :integer
  end
end
