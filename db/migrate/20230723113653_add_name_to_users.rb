class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :string
    add_column :users, :occupation, :string
    add_column :users, :position, :string
  end
end
