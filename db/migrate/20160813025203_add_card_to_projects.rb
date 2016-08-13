class AddCardToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :card, :boolean, default: false
  end

  def self.down
  	remove_column :projects, :card, :boolean, default: true
  end
end
