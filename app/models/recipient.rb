class Recipient < ActiveRecord::Base
	has_many   :line_items
	has_many   :orders, through: :line_items
	belongs_to :user
	belongs_to :campaign
	validates  :first_name, presence: true
	validates  :last_name, presence: true
	validates  :user_id, presence: true

	before_destroy :ensure_not_referenced_by_any_line_item

	private
	  
	  def ensure_not_referenced_by_any_line_item
	    if line_items.empty?
	    	return true
	    else
	    	errors.add(:bas, 'Line Item present')
	    	return false
	    end
	  end

end
