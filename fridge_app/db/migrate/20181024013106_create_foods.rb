class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :weight
      t.string :integer
      t.string :vegan
      t.string :boolean
      t.string :timestamp
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
