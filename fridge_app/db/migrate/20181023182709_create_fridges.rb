class CreateFridges < ActiveRecord::Migration[5.2]
  def change
    create_table :fridges do |t|
      t.string :location
      t.string :brand
      t.string :size
      t.string :integer

      t.timestamps
    end
  end
end
