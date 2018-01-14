class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.date :date
      t.integer :weight
      t.float :neck
      t.float :waist
      t.float :chest
      t.float :biceps
      t.float :thigh
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
