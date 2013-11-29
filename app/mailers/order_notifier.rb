class OrderNotifier < ActionMailer::Base
  default from: "admin@thanktheteacher.com"

  def received(order)
    @order = order
    mail to: order.email, subject: 'Thank The Teacher Order'
  end
end
