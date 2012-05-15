class AddUserIdToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :user_id, :integer
    add_index :programs, :user_id
  end
end
