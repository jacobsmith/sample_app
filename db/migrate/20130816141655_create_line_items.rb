class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :recipient, index: true
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end


  def down
    remove_column :references

	drop_table :line_items
  end
end