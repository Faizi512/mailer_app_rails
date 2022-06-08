class RemoveReferencesFromPhotographer < ActiveRecord::Migration[6.0]
  def change
  	 remove_reference :photographers, :project, index: true
  end
end
