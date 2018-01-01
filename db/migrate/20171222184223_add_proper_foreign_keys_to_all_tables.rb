class AddProperForeignKeysToAllTables < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :user_id, :integer
    add_foreign_key :workouts, :users

    add_column :worksets, :workout_id, :integer
    add_foreign_key :worksets, :workouts


  end
end
