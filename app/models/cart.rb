class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  
  def add_recipient(recipient_id, quantity)
    current_item = line_items.find_by(recipient_id: recipient_id)
    if current_item
      current_item.quantity += quantity.to_i
    else
      current_item = line_items.build(recipient_id: recipient_id)
      current_item.quantity = quantity.to_i 
      #the default price is 1. for new adds to cart subtract original value (replate with donated value)

    end
  current_item
  end

  def total_price
  	line_items.to_a.sum { |item| item.total_price }
  end
end
