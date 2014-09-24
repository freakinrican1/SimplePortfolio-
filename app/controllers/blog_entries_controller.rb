class BlogEntriesController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  
  def index 
    @blog_entries = BlogEntry.all
  end
#------------------------------------------------------  
  def show 
    @blog_entry = BlogEntry.find(params[:id])
  end 
#------------------------------------------------------  
  def new 
    @blog_entry = BlogEntry.new
  end
#------------------------------------------------------  
  def create 
    @blog_entry = BlogEntry.new(params[:blog_entry])
    
    if @blog_entry.save
      redirect_to blog_entries_path 
    else 
      render "new"
    end 
  end
#------------------------------------------------------  
  def edit
    @blog_entry = BlogEntry.find(params[:id]) 
  end
#------------------------------------------------------  
  def update 
    @blog_entry = BlogEntry.find(params[:id])
    
    if @blog_entry.update_attributes(params[:blog_entry])
      redirect_to blog_entry_path(@blog_entry.id)
    else
      render "edit"
    end
  end  
#------------------------------------------------------  
def destroy
   @blog_entry = BlogEntry.find(params[:id])
   @blog_entry.destroy
   
   if @blog_entry.destroy 
     redirect_to action: 'index'
   else
     render "show"
   end
 end
end
