class AddProjectPhotoToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_photo, :string
  end
end
