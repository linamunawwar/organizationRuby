class RenameTableRole < ActiveRecord::Migration[6.1]
  def change
  	rename_table :role_tables, :roles
  end
end
