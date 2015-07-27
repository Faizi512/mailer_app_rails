class AddIndexToProjects < ActiveRecord::Migration
  def change
  	 add_index :projects, [:client_id, :created_at]
  end
 
end

