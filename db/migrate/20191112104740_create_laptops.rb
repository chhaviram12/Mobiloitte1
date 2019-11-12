class CreateLaptops < ActiveRecord::Migration[5.2]
  def change
    create_table :laptops do |t|
      t.string :company
      t.string :processor
      t.string :image
      t.date :dat

      t.timestamps
    end
  end
end
