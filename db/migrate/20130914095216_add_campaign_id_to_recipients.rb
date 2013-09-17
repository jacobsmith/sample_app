class AddCampaignIdToRecipients < ActiveRecord::Migration
  def change
    add_column :recipients, :campaign_id, :integer
  end
end
