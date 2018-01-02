class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true

  private

  def get_user
    @user = current_user
  end

  def get_movements
    @movements = Workset.order(:movement).pluck(:movement).uniq
  end

  def get_latest_workout_stats
    @workouts = @user.workouts.order(created_at: :desc).limit(5).includes(:worksets)
    @workout_dates = @workouts.map{|w|[[w.created_at.month],[w.created_at.day],[w.created_at.year]]}
    @workout_one = @workouts[0].worksets.map{|set|[[set.movement], [set.weight * set.repetitions]]}
    @workout_two = @workouts[1].worksets.map{|set|[[set.movement], [set.weight * set.repetitions]]}
    @workout_three = @workouts[2].worksets.map{|set|[[set.movement], [set.weight * set.repetitions]]}
    @workout_four = @workouts[3].worksets.map{|set|[[set.movement], [set.weight * set.repetitions]]}
    @workout_five = @workouts[4].worksets.map{|set|[[set.movement], [set.weight * set.repetitions]]}
  end





end
