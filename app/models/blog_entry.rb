class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :draft, :title, :featured
  

  def excerpt
    n = 30
    self.content.split(/\s+/, n+1)[0...n].join(' ')
  end
    
  def relative_length 
    if self.content.length <= 100
      length = 'short'
    elsif self.content.length >= 100 && self.content.length <= 300
      length = 'medium' 
    else 
      length = 'long'
    end 
    length
  end
  
end
