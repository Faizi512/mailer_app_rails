class AddAssetToPhotos < ActiveRecord::Migration[6.0]
  def self.up
    add_attachment :photos, :asset
  end

  def self.down
    remove_attachment :photos, :asset
  end
end
