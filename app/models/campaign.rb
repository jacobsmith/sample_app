class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :recipients
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true
	validates :user_id, presence: true

  def self.to_csv
    CSV.generate do |csv|
	  csv << column_names
	  all.each do |campaign_recipient|
		csv << campaign_recipient.attributes.values_at(*column_names)
	  end
	end
  end
end
