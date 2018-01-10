class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.references :workout, foreign_key: true
      t.integer :weight
      t.integer :reps
      t.integer :rpe

      t.timestamps
    end
  end
end
