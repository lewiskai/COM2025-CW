class ContactController < ApplicationController
  def index
  end

  def new 
    @contact = Contact.index
  end

  def create
    @contact = Contact.index(params[:Contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message Sent!'
    else
      flash.now[:error] = 'Could not send message!'
      render :contact_index_path
    end
    end
  end
  
