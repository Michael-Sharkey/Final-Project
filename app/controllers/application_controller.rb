class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception, prepend: true

  private

  def get_user
    @user = current_user
  end

  def get_workouts
    @workouts = @user.workouts.order(:created_at)
  end


end
