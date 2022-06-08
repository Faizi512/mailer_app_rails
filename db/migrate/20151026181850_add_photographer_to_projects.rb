class AddPhotographerToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :photographers, :project, index: true
  end
end
