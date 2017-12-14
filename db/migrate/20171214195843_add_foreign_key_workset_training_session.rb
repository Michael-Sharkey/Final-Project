class AddForeignKeyWorksetTrainingSession < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :worksets, :training_sessions 
  end
end
