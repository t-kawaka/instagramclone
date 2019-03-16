class RemoveNumberFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :number, :integer
  end
end
