class AddProperForeignKeysToAllTables < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :user_id, :integer
    add_foreign_key :workouts, :users

    add_column :worksets, :workout_id, :integer
    add_foreign_key :worksets, :workouts

    add_column :worksets, :movement_id, :integer
    add_foreign_key :worksets, :movements

    add_column :worksets, :exercise_id, :integer
    add_foreign_key :worksets, :exercises

    add_column :exercises, :movement_id, :integer
    add_foreign_key :exercises, :movements

  end
end
