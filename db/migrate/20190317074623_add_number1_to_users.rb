class AddNumber1ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :number1, :string
  end
end
