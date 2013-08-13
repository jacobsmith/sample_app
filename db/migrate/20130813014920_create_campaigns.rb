class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.date :end_date
      t.integer :user_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
