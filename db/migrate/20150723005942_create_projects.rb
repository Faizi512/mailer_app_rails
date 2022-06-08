class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.date :date
      t.string :headline
      t.string :location
      t.text :description
      t.string :type
      t.string :status
      t.string :paymentstatus
      t.references :client, index: true

      t.timestamps
    end
  end
end
