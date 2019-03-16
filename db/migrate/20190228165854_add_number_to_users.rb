class AddNumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :number, :integer, limit: 8
  end
end
