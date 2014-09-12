class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :draft, :title
end
