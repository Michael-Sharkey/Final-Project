class MealsController < ApplicationController
  def index
    @user = current_user
    @meals = @user.meals.order(created_at: :desc)
  end

  def show
    @meal = Meal.find_by_id(params[:id])
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
    params.require(:meal).permit(:id, :user_id, :name, :photo, :notes, '_destroy')
  end
end
