class PurchaseMailer < ActionMailer::Base
  layout 'purchase_mailer'

  default from: "One Month Commerce <commerce@onemonth.com>"

  def purchase_receipt purchase
    @purchase = purchase
    @product = Product.find(purchase.product_id)

    mail to: purchase.email, subject: "Thanks for your purchase!"

  end

end