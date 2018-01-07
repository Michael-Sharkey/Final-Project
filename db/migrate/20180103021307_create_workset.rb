class CreateWorkset < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.references :exercise, foreign_key: true
      t.references :movement, foreign_key: true
      t.references :workout, foreign_key: true
      t.integer :weight
      t.integer :reps
      t.integer :rpe

      t.timestamps
    end
  end
end
