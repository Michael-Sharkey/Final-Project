class GraphsController < ApplicationController
  def radar
    @user = current_user
    @workouts = @user.workouts.order(created_at: :desc).limit(4)
    respond_to do |format|
      format.html
      format.json { render json: @workouts }
    end
  end

end
