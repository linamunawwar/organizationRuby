class AddUserIdToOrganizations < ActiveRecord::Migration[6.1]
  def change
    add_column :organizations, :user_id, :integer
  end
end
