class Changephnumtypes < ActiveRecord::Migration[6.0]
  def change

  	change_column :clients, :phonenumber, :string
  	change_column :models, :phonenumber, :string
  	change_column :photographers, :phonenumber, :string



  end
end
