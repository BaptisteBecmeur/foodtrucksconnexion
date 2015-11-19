class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    # @greeting = "Hi"

    mail to: @user.email, subject: "Bonjour #{user.name}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.commande.subject
  #
  def commande(user)
    @user = user
    # @greeting = "Hi"

    mail to: @user.email, subject: "Bonjour #{user.name}"
  end
end
