class ChangeTypeToCtype < ActiveRecord::Migration
	  def change

	  change_table :projects do |t|
	  t.rename :type, :ctype
	end
  end
end
