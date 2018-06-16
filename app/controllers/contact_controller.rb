class ContactController < ApplicationController
    @person = User.all
    def index 
        @person = User.find_by email: params[:email]         
    end


    # GET /people/1
    # GET /people/1.json
    def show
    end


    def send_confirmation
        # colocar email do remetente e mensagem
        ContactMailer.with(person: self).confirmation.deliver_now!
    end
    
end
