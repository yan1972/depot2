class OrderNotifier < ActionMailer::Base
  # default from: "Sam Ruby <depot@example.com>"
  default from: "Chris Yan <yan200900@gmail.com>"
  # default from: "Chris Yan <yan1972@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Progmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Progmatic Store Order Shipped'
  end
end
