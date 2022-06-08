class AddAvatarToModels < ActiveRecord::Migration[6.0]
    def self.up
    add_attachment :models, :avatar
  end

  def self.down
    remove_attachment :models, :avatar
  end
end
