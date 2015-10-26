class AddPhotographerToProjects < ActiveRecord::Migration
  def change
    add_reference :photographers, :project, index: true
  end
end
