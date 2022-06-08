class AddProjectsRefToLocations < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :project, index: true
  end
end
