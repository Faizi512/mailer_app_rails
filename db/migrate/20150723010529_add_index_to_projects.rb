class AddIndexToProjects < ActiveRecord::Migration[6.0]
  def change
  	 add_index :projects, [:client_id, :created_at]
  end
 
end

