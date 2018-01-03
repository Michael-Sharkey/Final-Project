class CreateWorkset < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.string :movement
      t.string :exercise
      t.integer :weight
      t.integer :reps
      t.integer :rpe
      t.references :user, foreign_key: true
      t.references :workout, foreign_key: true
      t.timestamps
    end
  end
end
