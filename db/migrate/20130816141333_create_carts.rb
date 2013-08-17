class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|

      t.timestamps
    end
  end

  def down
	drop_table :carts
  end
end