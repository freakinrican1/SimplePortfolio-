class Project < ActiveRecord::Base
  attr_accessible :description, :github, :name, :summary, :project_photo
  
  mount_uploader :project_photo, ProjectPhotoUploader
end
