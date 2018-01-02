class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true

  private

  def get_user
    @user = current_user
  end

  def get_movement_info
    @pushes = Push.joins(:workout).where("user_id = ?", @user.id)
    @pulls = Pull.joins(:workout).where("user_id = ?", @user.id)
    @squats = Squat.joins(:workout).where("user_id = ?", @user.id)
    @hinges = Hinge.joins(:workout).where("user_id = ?", @user.id)
    @cores = Core.joins(:workout).where("user_id = ?", @user.id)

  end

  def get_workout_info
    @workouts = @user.workouts.order(created_at: :desc).limit(5).includes(:worksets)
    @workout_dates = @workouts.map{|w|[[w.created_at.month],[w.created_at.day],[w.created_at.year]]}
  end

end
