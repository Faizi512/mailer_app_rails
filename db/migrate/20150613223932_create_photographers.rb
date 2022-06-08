class CreatePhotographers < ActiveRecord::Migration[6.0]
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :email
      t.integer :phonenumber

      t.timestamps
    end
  end
end
