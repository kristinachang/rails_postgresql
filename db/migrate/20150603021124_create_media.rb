class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :media_type
      t.string :media_url
      t.integer :exercise_id
      t.integer :trainer_id

      t.references :exercise 
      t.references :trainer 
      t.timestamps null: false
    end
  end
end
