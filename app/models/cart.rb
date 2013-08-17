class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  
  def add_recipient(recipient_id)
    current_item = line_items.find_by(recipient_id: recipient_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(recipient_id: recipient_id)
    end
  current_item
  end

  def total_price
  	line_items.to_a.sum { |item| item.total_price }
  end
end
