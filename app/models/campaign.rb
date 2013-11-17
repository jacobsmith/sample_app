class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :recipients
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true
	validates :user_id, presence: true

  def to_csv
  	column_names = ['first_name', 'last_name', 'title', 'campaign_id']
    CSV.generate do |csv|
	  csv << column_names
	  recipients.each do |campaign_recipient|
		csv << [
			campaign_recipient.first_name,
			campaign_recipient.last_name,
			campaign_recipient.title,
			campaign_recipient.campaign_id 
		]
	  end
	end
  end
end
