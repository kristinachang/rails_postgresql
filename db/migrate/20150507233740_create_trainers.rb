class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.references :user

      t.timestamps null: false
    end
  end
end
