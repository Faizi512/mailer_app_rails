class CreateClients < ActiveRecord::Migration
  def change
    # drop_table :clients
    create_table :clients do |t|
      t.string :email
      t.string :name
      t.string :nameofcontact
      t.string :phonenumber
      t.string :mailingaddress

      t.timestamps
    end
  end
end
