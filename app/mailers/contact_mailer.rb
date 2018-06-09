class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.confirmation.subject
  #
  def confirmation
    @person = params[:person]
    @msg    = params[:msg]
    @remet  = params[:remet]
    mail to: @person.email, subject: "Mensagem: colocar dados do usuário"
  end

end
