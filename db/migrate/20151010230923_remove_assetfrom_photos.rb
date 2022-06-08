class RemoveAssetfromPhotos < ActiveRecord::Migration[6.0]
  def change
  	change_column :photos, :asset, :string
  end
end
