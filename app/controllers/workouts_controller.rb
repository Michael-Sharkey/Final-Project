class WorkoutsController < ApplicationController
  def new
    parse_info
    @workout = Workout.new
    @workout.worksets.new
  end

  def create
    get_user
    @workout = Workout.new(workout_params)
    @workout.user_id = @user.id
    if @workout.save
      redirect_to current_user, notice: 'Success!'
    else
      render 'new', notice: 'Something Went Wrong'
    end
  end

  private

  def workout_params
    params.require(
                    :workout
                  )
                  .permit(
                    :id,
                    :user_id,
                    '_destroy',
                    worksets_attributes:  [:id, :user_id, :workout_id, :movement, :exercise, :weight, :reps, :rpe, '_destroy']
                  )
  end



end
