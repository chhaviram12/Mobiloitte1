class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :company
      t.string :wmodel
      t.string :image
      t.date :dat

      t.timestamps
    end
  end
end
