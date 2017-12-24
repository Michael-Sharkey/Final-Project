class MealsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user_id = current_user.id
    if @meal.save
      redirect_to current_user, notice: 'Success!'
    else
      render 'new', notice: 'Something Went Wrong'
    end
  end

  private

  def workout_params
    params.require(:meal).permit(:user_id, :notes, '_destroy', worksets_attributes: [:workout_id, :id, :weight, :repetitions, :rpe, :exercise_id, :movement_id, '_destroy'])
  end
end
