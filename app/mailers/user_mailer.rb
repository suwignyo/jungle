class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"


  def order_email(order, line_items)
    @line_items = line_items
    @order = order
    mail(to: @order.email, subject: 'Jungle')
  end

end
