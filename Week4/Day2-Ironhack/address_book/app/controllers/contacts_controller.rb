class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end
  def new
  end
  def create
    contact = Contact.new(
  :name => params[:contact][:name],
  :address => params[:contact][:address],
  :phone_number => params[:contact][:phone],
  :email => params[:contact][:email]
  :favorite => params[:contact][:favorite])
  
  if params[:contact][:name] != "" && params[:contact][:address] !=""
  contact.save
  redirect_to("/contacts")
end
# Render contact's attributes

  end

  def personal
    id = params[:id]
    @contact = Contact.find_by(id: id)

    render 'personal'
  end

end
