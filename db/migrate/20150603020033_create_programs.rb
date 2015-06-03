class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :theme
      t.integer :client_id

      t.references :client
      t.timestamps null: false

    end
  end
end
