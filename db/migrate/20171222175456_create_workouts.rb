class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.datetime :workout_date
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
