class RemoveAssetFromPhotos < ActiveRecord::Migration
  def change
  	remove_column :photos, :asset, :string
  end
end
