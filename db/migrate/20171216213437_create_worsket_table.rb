class CreateWorsketTable < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.string :type
      t.string :exercise
      t.integer :repetitions
      t.integer :external_load
      t.references :training_session, foreign_key: true

      t.timestamps
    end
  end
end
