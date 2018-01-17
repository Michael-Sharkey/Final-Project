class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.references :user, foreign_key: true
      t.boolean :good

      t.timestamps
    end
  end
end
