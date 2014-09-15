class UsersController < ApplicationController
  
  
  def new 
    @user = User.new
  end
  
  def create 
    @user = User.new (params[:users])
    
    if @user.save
      redirect_to blog_entries_path 
    else 
      raise "user could not be saved"
    end
  end
  
  
end
