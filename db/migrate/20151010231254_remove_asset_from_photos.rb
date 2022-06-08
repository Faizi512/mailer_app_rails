class RemoveAssetFromPhotos < ActiveRecord::Migration[6.0]
  def change
  	remove_column :photos, :asset, :string
  end
end
