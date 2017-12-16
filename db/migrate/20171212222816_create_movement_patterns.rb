class CreateMovementPatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :movement_patterns do |t|
      t.string :name
      t.references :training_session, foreign_key: true


      t.timestamps
    end
  end
end
