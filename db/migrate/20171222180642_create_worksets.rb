class CreateWorksets < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.integer :weight
      t.integer :repetitions
      t.integer :rpe

      t.timestamps
    end
  end
end
