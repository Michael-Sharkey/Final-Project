class AddNotesColumnToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :notes, :text
  end
end
