class AddUserIdToMldMates < ActiveRecord::Migration[6.1]
  def change
    add_column :mld_mates, :user_id, :integer
    add_index :mld_mates, :user_id
  end
end
