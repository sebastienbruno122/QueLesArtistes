class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    # redirect_to contacts_path
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now = 'Merci'
    else
      flash.now[:error] = 'Message ne peut pas être envoyé.'
      render :new
    end
  end
end
