class CreateWorksets < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.string :type
      t.string :exercise
      t.integer :weight
      t.integer :repetitions
      t.integer :rpe
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
