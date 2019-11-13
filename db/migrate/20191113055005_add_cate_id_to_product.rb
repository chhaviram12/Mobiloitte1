class AddCateIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cate_id, :integer
  end
end
