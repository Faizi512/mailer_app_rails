class AddLogoToClients < ActiveRecord::Migration[6.0]
    def self.up
    add_attachment :clients, :logo
  end

  def self.down
    remove_attachment :clients, :logo
  end
end
