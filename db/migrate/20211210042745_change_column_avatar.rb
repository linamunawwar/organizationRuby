class ChangeColumnAvatar < ActiveRecord::Migration[6.1]
  def change
  	change_table :people do |t|
  		t.rename :logo, :avatar
  	end
  end
end
