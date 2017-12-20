class CreateExercise < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :repetitions
      t.integer :external_load
      t.references :training_session, foreign_key: true

      t.timestamps
    end
  end
end
