class RenameUsersIdToUserIdInPhoneTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :phones, :users_id, :user_id
  end
end
