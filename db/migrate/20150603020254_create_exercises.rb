class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :category
      t.string :name
      t.string :target
      t.string :description
      t.text :video1
      t.text :video2
      t.text :video3
      t.text :photo1
      t.text :photo2
      t.text :photo3

      t.timestamps null: false
    end
  end
end
