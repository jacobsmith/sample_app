class OrderNotifier < ActionMailer::Base
  include ActionView::Helpers::NumberHelper

  default from: "admin@thanktheteacher.com"

  def received(order)
    @order = order
    mail to: order.email, subject: 'Thank The Teacher Order'
  end
end
