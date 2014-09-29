class ContactsController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  
  def index
    @contacts = Contact.all 
  end
#------------------------------------------------------   
  def new
    @contact = Contact.new 
  end
#------------------------------------------------------   
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      redirect_to contact_me_path 
    else 
      render "new"
    end
  end
#------------------------------------------------------   
  def show
    @contact = Contact.find(params[:id]) 
  end
  
#------------------------------------------------------  
  
end
