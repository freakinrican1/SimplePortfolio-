class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new 
    @user = User.new
  end
  
  def create 
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to blog_entries_path 
    else 
      raise "user could not be saved"
    end
  end
  
  
end
