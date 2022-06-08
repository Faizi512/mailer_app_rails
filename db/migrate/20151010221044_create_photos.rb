class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :asset
      t.references :project, index: true

      t.timestamps
    end
  end
end
