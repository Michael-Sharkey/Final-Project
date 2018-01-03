class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true

  private

  def get_user
    @user = current_user
  end

  def parse_info
    @user = current_user
    @workouts = @user.workouts.joins(:worksets).order(created_at: :desc).limit(5)
    @workout_dates = @workouts.map{|w|[[w.created_at.month],[w.created_at.day],[w.created_at.year]]}

    @exercises = Workset.order(:movement, :exercise).pluck(:exercise).uniq
    @movements = Workset.order(:created_at).pluck(:movement).uniq
    @pushVol = @workouts.where("worksets.movement = 'Push'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
    @pullVol = @workouts.where("worksets.movement = 'Pull'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
    @squatVol = @workouts.where("worksets.movement = 'Squat'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
    @hingeVol = @workouts.where("worksets.movement = 'Hip Extension'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
    @coreVol = @workouts.where("worksets.movement = 'Core Stability'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)

  end

end
