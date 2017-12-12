class CreateMusclegroups < ActiveRecord::Migration[5.1]
  def change
    create_table :musclegroups do |t|
      t.string :name
      t.references :workset, foreign_key: true
      t.references :movement, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
