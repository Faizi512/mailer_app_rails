class AddProjectsRefToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :project, index: true
  end
end
