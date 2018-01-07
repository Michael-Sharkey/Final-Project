class MealsController < ApplicationController

  def index
    @active = current_user.meals.last
    @meals = current_user.meals.order(created_at: :desc).offset(1)
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
      redirect_to @meal, notice: 'Success!'
    else
      render 'new', notice: 'Something Went Wrong'
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:id, :user_id, :photo, '_destroy')
  end
end
