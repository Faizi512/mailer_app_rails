class ChangeFeaturedInProjects < ActiveRecord::Migration

  def self.up
  	change_column :projects, :is_featured, :boolean, default: false
  end

  def self.down
  	change_column :projects, :is_featured, :boolean, default: true
  end
end
