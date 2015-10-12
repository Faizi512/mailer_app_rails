class RemoveAssetfromPhotos < ActiveRecord::Migration
  def change
  	change_column :photos, :asset, :string
  end
end
