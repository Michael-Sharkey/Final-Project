class CreateTrainingSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :training_sessions do |t|
      t.integer :duration
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
