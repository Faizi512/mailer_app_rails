class RemovePgrapherFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :pgrapher, :string
  end
end
