class AddPgrapherToProjects < ActiveRecord::Migration
  def change

  	add_column :projects, :pgrapher, :string
  	
  end
end
