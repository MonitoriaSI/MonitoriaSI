class ContactController < ApplicationController
    def index 
          @person = User.find_by email: params[:email]
    end

    def send_confirmation
        # colocar email do remetente e mensagem
        ContactMailer.with(person: self).confirmation.deliver_now!
    end
    
end
