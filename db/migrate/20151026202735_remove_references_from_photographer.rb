class RemoveReferencesFromPhotographer < ActiveRecord::Migration
  def change
  	 remove_reference :photographers, :project, index: true
  end
end
