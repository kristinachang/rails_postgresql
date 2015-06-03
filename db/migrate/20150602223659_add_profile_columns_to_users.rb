class AddProfileColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :string
  	add_column :users, :height, :integer
  	add_column :users, :weight, :integer
  	add_column :users, :age, :integer
  	add_column :users, :phone, :string
  	add_column :users, :occupation, :string
  	add_column :users, :certifications, :string
  end
end
