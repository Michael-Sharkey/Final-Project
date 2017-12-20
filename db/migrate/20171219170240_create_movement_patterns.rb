class CreateMovementPatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :movement_patterns do |t|
      t.string :name
      t.string :muscles
      t.timestamps
    end
  end
end
