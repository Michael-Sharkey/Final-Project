class AddProperForeignKeysToAllTables < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :user_id, :integer
    add_foreign_key :workouts, :users


  end
end
