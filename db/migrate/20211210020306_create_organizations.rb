class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.text :name
      t.string :phone
      t.string :email
      t.string :website
      t.text :logo

      t.timestamps
    end
  end
end
