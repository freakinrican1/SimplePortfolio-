class PagesController < ApplicationController
  skip_before_filter :authorize
  
  
  def welcome 
  end

  def about 
  end
  
  def contact_me
  end
  
  
end 
