class AddLogoToClients < ActiveRecord::Migration
    def self.up
    add_attachment :clients, :logo
  end

  def self.down
    remove_attachment :clients, :logo
  end
end
