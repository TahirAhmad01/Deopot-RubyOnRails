class UsermailMailer < ApplicationMailer
  default from: 'Sam Ruby <tahirahmadsani@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermail_mailer.respond.subject
  #
  def respond(order)
    @order = order
    @greeting = "Thank u for order"

    mail to: @order.email
  end
end
