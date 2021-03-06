class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :size
      t.string :integer
      t.string :alcoholic
      t.string :boolean
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
