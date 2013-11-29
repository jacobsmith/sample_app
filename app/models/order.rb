class Order < ActiveRecord::Base
	attr_accessor :card_number, :card_expiration, :card_cvv2, :name_on_card
	has_many :line_items, dependent: :destroy
	validates :name, :email, presence: true

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			self.line_items << item
		end
	end

  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
