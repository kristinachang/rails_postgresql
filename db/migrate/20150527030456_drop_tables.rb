class DropTables < ActiveRecord::Migration
  def change
  	drop_table :clients
  	drop_table :trainers
  end
end
