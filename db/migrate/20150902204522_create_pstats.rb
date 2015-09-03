class CreatePstats < ActiveRecord::Migration
  def change
    create_table :pstats do |t|
      t.string :name
      t.references :project, index: true

      t.timestamps
    end
  end
end
