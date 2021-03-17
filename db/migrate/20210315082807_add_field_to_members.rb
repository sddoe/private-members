class AddFieldToMembers < ActiveRecord::Migration[6.1]
  def change
  	add_column :members, :name, :string
  	add_index :members, :name, unique: true
  end
end
