class AddFeaturedToProjects < ActiveRecord::Migration[6.0]
  def self.up
  	add_column :projects, :is_featured, :boolean
  end

  def self.down
  	remove_column :projects, :is_featured, :boolean
  end
end
