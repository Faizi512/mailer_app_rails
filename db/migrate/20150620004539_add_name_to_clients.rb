class AddNameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :name, :string
    add_column :clients, :nameofcontact, :string
    add_column :clients, :phonenumber, :integer
    add_column :clients, :mailingaddress, :string
  end
end
