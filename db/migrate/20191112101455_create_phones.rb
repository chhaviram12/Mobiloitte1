class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :company
      t.string :pmodel
      t.string :image
      t.date :dat

      t.timestamps
    end
  end
end
