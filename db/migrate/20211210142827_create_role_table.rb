class CreateRoleTable < ActiveRecord::Migration[6.1]
  def change
    create_table :role_tables do |t|
    	t.string :name
      	t.string :description

      t.timestamps
    end
  end
end
