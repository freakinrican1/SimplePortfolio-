class Project < ActiveRecord::Base
  attr_accessible :description, :github, :name, :summary
end