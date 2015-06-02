class AddForeignKeyToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :trainer_id, :integer
  end
end
