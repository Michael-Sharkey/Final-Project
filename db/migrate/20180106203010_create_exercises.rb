class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :pattern
      t.references :workout, foreign_key: true
      t.integer :weight
      t.integer :reps
      t.integer :rpe
      t.boolean :daily_max

      t.timestamps
    end
  end
end
