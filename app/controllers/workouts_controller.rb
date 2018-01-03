class WorkoutsController < ApplicationController
  def new
    parse_exercises
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

  def parse_exercises
    @exercises = Workset.order(:movement, :exercise).pluck(:exercise).uniq
    @movements = Workset.order(:created_at).pluck(:movement).uniq
    @pushes = Workset.where(movement: 'Push').order(:exercise).uniq
    @pulls = Workset.where(movement: 'Pull').order(:exercise).uniq
    @squats = Workset.where(movement: 'Squat').order(:exercise).uniq
    @hips = Workset.where(movement: 'Hip Extension').order(:exercise).uniq
    @cores = Workset.where(movement: 'Core Stability').order(:exercise).uniq
  end

end
