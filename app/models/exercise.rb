class Exercise < ApplicationRecord
  belongs_to :workout

  def self.daily_maxes
    where(daily_max: true).joins(:workout).select('exercises.name, exercises.weight, exercises.reps, exercises.rpe, workouts.date').to_json
  end

  def self.cumulative_volume
    order(:pattern, :name, created_at: :desc).to_json
  end
end
