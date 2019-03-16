class AddTelnumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Telnumber, :integer, limit: 8
  end
end
