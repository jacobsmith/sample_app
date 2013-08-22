class Campaign < ActiveRecord::Base
	belongs_to :user
	has_many :recipients
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true
	validates :user_id, presence: true
end
