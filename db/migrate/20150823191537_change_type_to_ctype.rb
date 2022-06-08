class ChangeTypeToCtype < ActiveRecord::Migration[6.0]
	  def change

	  change_table :projects do |t|
	  t.rename :type, :ctype
	end
  end
end
