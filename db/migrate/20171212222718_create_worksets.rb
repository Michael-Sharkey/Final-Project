class CreateWorksets < ActiveRecord::Migration[5.1]
  def change
    create_table :worksets do |t|
      t.integer :repetitions
      t.integer :external_load
      t.boolean :warm_up
      t.boolean :work_set
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
