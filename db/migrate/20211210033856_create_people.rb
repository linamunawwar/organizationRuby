class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.text :name
      t.string :phone
      t.string :email
      t.text :logo
      t.integer :organization_id

      t.timestamps
    end
  end
end
