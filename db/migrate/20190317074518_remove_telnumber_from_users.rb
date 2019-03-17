class RemoveTelnumberFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :Telnumber, :integer
  end
end
