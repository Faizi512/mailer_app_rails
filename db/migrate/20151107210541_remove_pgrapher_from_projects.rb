class RemovePgrapherFromProjects < ActiveRecord::Migration[6.0]
  def change
  	remove_column :projects, :pgrapher, :string
  end
end
