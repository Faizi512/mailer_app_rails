class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :firstname
      t.string :lastname
      t.integer :height
      t.integer :size
      t.integer :shoesize
      t.string :haircolor
      t.string :eyes
      t.integer :bust
      t.integer :waist
      t.integer :hips
      t.integer :phonenumber

      t.timestamps
    end
  end
end
