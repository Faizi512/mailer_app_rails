class CreateCtypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ctypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
