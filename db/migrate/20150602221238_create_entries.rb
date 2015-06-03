class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.time :time
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.string :snack1
      t.string :snack2
      t.string :snack3
      t.string :kcal
      t.string :protein
      t.string :fats
      t.string :carbs
      t.string :servings
      t.string :food_name
      t.string :totals
      t.integer :mood
      t.integer :pain
      t.text :message
      t.integer :client_id

      t.references :client
      t.timestamps null: false
      
    end
  end
end
