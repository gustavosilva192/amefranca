class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end
	
	def create
		@contact = Contact.new contact_params
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Não foi possível enviar a mensagem.'
			render :new
		end
	end
	private
	def contact_params
    params.require(:contact).permit(:name, :message, :telefone, :nickname, :tipo)
  end
end
