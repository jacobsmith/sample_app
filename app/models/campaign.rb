class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :recipients
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true
	validates :user_id, presence: true

  def to_csv
  	column_names = ['id', 'first_name', 'last_name', 'title', 'campaign_id', 'user_id']
    CSV.generate do |csv|
	  csv << column_names
	  recipients.each do |campaign_recipient|
		csv << [
			campaign_recipient.id,
			campaign_recipient.first_name,
			campaign_recipient.last_name,
			campaign_recipient.title,
			campaign_recipient.campaign_id,
			campaign_recipient.user_id
		]
	  end
	end
  end

  def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        #need to find all campaign users (campaign_id match), delete them, and then recreate.
        #or follow tutorial for mods to existing ids
        Recipient.create! row.to_hash
      end
	end
end
