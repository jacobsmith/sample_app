class LineItem < ActiveRecord::Base
  belongs_to :recipient
  belongs_to :cart

  def total_price
  	recipient.price * quantity
  end
end
