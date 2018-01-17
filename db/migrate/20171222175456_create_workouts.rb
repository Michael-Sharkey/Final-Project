class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.integer :feeling_before
      t.integer :rating_after
      t.timestamps
      t.integer :user_id
    end
  end
end
