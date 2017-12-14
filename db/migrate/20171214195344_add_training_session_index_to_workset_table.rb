class AddTrainingSessionIndexToWorksetTable < ActiveRecord::Migration[5.1]
  def change
    add_column :worksets, :training_session_id, :integer
  end
end
