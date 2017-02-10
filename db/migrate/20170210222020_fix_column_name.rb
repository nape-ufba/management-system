class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :type_id, :user_type_id
  end
end
