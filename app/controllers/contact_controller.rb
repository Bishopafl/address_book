class ContactController < ApplicationController

	def index
		@contact_list = Contact.order(name: :desc)
		render "index"
	end

	def create
		# project = Contact.new(name: params[:contact][:name], address:[:contact][:address], email_address:[:contact][:email_address], phone_number:[:contact][:phone_number])
    
		project = Contact.new(project_params)

		if project.save == true
			redirect_to("/contacts")
		else
			redirect_to("/404")
		end
  	end

  	#short cut of that commentted code

  	private #only for this controller

  	def project_params
  		params.require(:contact).permit(:name, :address, :email_address, :phone_number)
  	end


end
