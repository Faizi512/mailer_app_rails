class AddPhotographersToProjects < ActiveRecord::Migration[6.0]
  def self.up
  	add_column :projects, :photographer, :string
  end

  def self.down
  	remove_column :projects, :photographer, :string
  end

end
