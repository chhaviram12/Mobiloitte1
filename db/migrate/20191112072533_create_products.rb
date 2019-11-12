class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :description
      t.date :dat

      t.timestamps
    end
  end
end
