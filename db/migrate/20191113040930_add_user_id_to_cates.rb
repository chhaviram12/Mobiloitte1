class AddUserIdToCates < ActiveRecord::Migration[5.2]
  def change
    add_column :cates, :user_id, :integer
  end
end
