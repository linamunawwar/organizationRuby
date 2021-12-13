class AddForeignKeyTableOrganization < ActiveRecord::Migration[6.1]
  def change
  	change_column(:organizations, :user_id, :bigInt)
  	add_foreign_key :organizations, :users
  end
end
