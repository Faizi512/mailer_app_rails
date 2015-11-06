class AddFeaturedToProjects < ActiveRecord::Migration
  def self.up
  	add_column :projects, :is_featured, :boolean
  end

  def self.down
  	remove_column :projects, :is_featured, :boolean
  end
end
