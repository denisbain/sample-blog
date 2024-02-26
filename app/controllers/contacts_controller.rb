class ContactsController < ApplicationController

  def index
  end
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end


  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
#if @contact.save
#  render :create
#else
# render :create
#end