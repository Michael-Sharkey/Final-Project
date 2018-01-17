class CreateWorksets < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.references :workout, foreign_key: true
      t.integer :movement_id
      t.references :exercise, foreign_key: true

      t.integer :weight
      t.integer :reps
      t.integer :rpe
      t.boolean :daily_max
      t.timestamps
    end
  end
end
