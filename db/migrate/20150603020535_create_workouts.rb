class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :load
      t.integer :sets
      t.integer :reps
      t.string :speed
      t.integer :program_id
      t.integer :exercise_id

      t.references :program
      t.references :exercise 
      t.timestamps null: false
    end
  end
end
