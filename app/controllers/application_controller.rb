class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true

  private

  def get_user
    @user = current_user
  end

  def get_movements
    @movements =  @movements = Movement.pluck(:name)
  end

  def get_exercises
    @exercises = Exercise.order(:movement_id).pluck(:name)
  end

end
