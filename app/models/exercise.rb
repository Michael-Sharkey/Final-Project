class Exercise < ApplicationRecord
  belongs_to :workout

  validates :pattern, inclusion: { in: %w(Push Pull Squat Hinge Core),
    message: "%{value} is not a valid movement pattern" }
  validates :weight, numericality: { only_integer: true }
  validates :reps, numericality: { only_integer: true }
  validates :rpe, numericality: { only_integer: true, less_than_or_equal_to: 10 }, allow_blank: true


  def self.daily_maxes
    where(daily_max: true).joins(:workout).select('exercises.name, exercises.weight, exercises.reps, exercises.rpe, workouts.date').to_json
  end

  def self.cumulative_volume
    order(:pattern, :name, created_at: :desc).to_json
  end
end
