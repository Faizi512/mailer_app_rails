class AddPgrapherToProjects < ActiveRecord::Migration[6.0]
  def change

  	add_column :projects, :pgrapher, :string
  	
  end
end
