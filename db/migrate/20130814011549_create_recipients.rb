class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
