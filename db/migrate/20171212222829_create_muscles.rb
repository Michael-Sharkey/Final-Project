class CreateMuscles < ActiveRecord::Migration[5.1]
  def change
    create_table :muscles do |t|
      t.string :name
      t.references :workset, foreign_key: true
      t.references :muscslegroup, foreign_key: true
      t.references :movement, foreign_key: true
      t.references :user, foreign_key: true



      t.timestamps
    end
  end
end
