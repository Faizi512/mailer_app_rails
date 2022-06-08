class AddChangestoModels < ActiveRecord::Migration[6.0]
  def change

  	change_column :models, :bust, :float
  	change_column :models, :waist, :float
  	change_column :models, :hips, :float
  	change_column :models, :shoesize, :float
  	change_column :models, :size, :string
  	add_column :models, :heightinches, :decimal
    rename_column :models, :height, :heightfeet
    add_column :models, :city, :string
    add_column :models, :age, :integer

  end
end
